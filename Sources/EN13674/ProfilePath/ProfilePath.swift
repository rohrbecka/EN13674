//
//  ProfilePath.swift
//  
//
//  Created by André Rohrbeck on 27.08.22.
//

import Foundation

/// The description of a profile by path elements
public struct Path {
    internal var elements: [PathElement]


    init(@PathBuilder _ content: () -> [PathElement]) {
        self.elements = content()
    }


    public func profile(resolution: Double) -> [CGPoint] {
        var result = [CGPoint]()
        for element in elements {
            if let line = element as? LineElement {
                result += Sampler.straightLine(from: line.start, to: line.end, resolution: resolution)
            } else if let arc = element as? ArcElement {
                result += Sampler.arc(from: arc.start,
                                      to: arc.end,
                                      center: arc.center,
                                      radius: arc.radius,
                                      negativeDirection: arc.negativeDirection,
                                      resolution: resolution)
            }
        }
        return result
    }
}



@resultBuilder
struct PathBuilder {

    static func buildBlock() -> [PathElement] {
        []
    }


    static func buildBlock(_ elements: PathElementDescription...) -> [PathElement] {
        buildBlock(elements)
    }



    static func buildBlock(_ elements: [PathElementDescription]) -> [PathElement] {
        var stackOfUnusedElements = [PathElementDescription]()
        var result = [PathElement]()
        var connectingElement: ConnectingElementDescription?
        for element in elements {
            if result.isEmpty {
                result = result.appendingFirstElement(element)
            } else if !stackOfUnusedElements.isEmpty {
                stackOfUnusedElements.append(element)
                if element.isCompletelyDefined {
                    let pathElements = buildBlock(stackOfUnusedElements.reversedCompletely()).reversedCompletely()
                    result = result.appending(pathElements, with: connectingElement)
                    stackOfUnusedElements = [PathElementDescription]()
                    connectingElement = nil
                }
            } else if let line = element as? Line {
                do {
                    result = try result.appending(line, with: connectingElement)
                    connectingElement = nil
                } catch {
                    stackOfUnusedElements.append(element)
                }
            } else if let arc = element as? Arc {
                do {
                    result = try result.appending(arc, with: connectingElement)
                    connectingElement = nil
                } catch {
                    // take the element and store it in the stack of unused element descriptions
                    stackOfUnusedElements.append(element)
                }
            } else if let connection = element as? ConnectingElementDescription {
                connectingElement = connection
            }
        }
        return result
    }
}



extension Array where Element == PathElementDescription {
    fileprivate func reversedCompletely() -> [PathElementDescription] {
        self.reversed().map {
            $0.reversed
        }
    }
}



extension Array where Element == PathElement {
    fileprivate func reversedCompletely() -> [PathElement] {
        self.reversed().map {
            $0.reversed
        }
    }
}


extension Array where Element == PathElement {

    func appendingFirstElement(_ element: PathElementDescription) -> [PathElement] {
        if let line = element as? Line {
            return self.appending(first: line)
        } else if let arc = element as? Arc {
            do {
                return try self.appending(arc)
            } catch {
                return []
            }
        } else {
            return []
        }
    }


    fileprivate func appending(first line: Line) -> [PathElement] {
        guard let start = line.start, let end = line.end else {
            return []
        }
        var result = self
        result.append(LineElement(start: start, end: end))
        return result
    }

    fileprivate func appending(_ line: Line,
                               with connectingElement: ConnectingElementDescription? = nil) throws -> [PathElement] {
        var result = self
        if let start = line.start,
           let end = line.end {
            if last is LineElement {
                let newLine = LineElement(start: start, end: end)
                result = result.appending(intersectingLine: newLine,
                                          connectingWith: connectingElement)
            } else if last is ArcElement {
                let newLine = LineElement(start: start, end: end)
                result = result.appending(intersectingLine: newLine,
                                          connectingWith: connectingElement)
            } else if let currentPoint = result.last?.endPoint {
                result.append(LineElement(start: currentPoint, end: end))
            } else {
                result.append(LineElement(start: start, end: end))
            }
        } else if let end = line.end, let heading = line.heading {
            let newLine = LineElement(heading: heading, length: 1000, end: end)
            result = result.appending(intersectingLine: newLine, connectingWith: connectingElement)
        } else if let end = line.end, let curPoint = result.last?.endPoint {
            let newLine = LineElement(start: curPoint, end: end)
            if result.last is LineElement {
                result = result.appending(intersectingLine: newLine,
                                          connectingWith: connectingElement)
            } else {
                result.append(LineElement(start: curPoint, end: end))
            }
        } else if line.start == nil, line.end == nil, line.heading == nil,
                  let curPoint = result.last?.endPoint,
                  let curHeading = result.last?.endHeading {
            let newLine = LineElement(start: curPoint, heading: curHeading, length: 1000) // 1000 as arbitrary length
            result.append(newLine)
        } else if let start = line.start,
                  let heading = line.heading {
            let newLine = LineElement(start: start, heading: heading, length: 1000)
            result = result.appending(intersectingLine: newLine, connectingWith: connectingElement)
        } else if let curPoint = result.last?.endPoint,
                  let heading = line.heading {
            let newLine = LineElement(start: curPoint, heading: heading, length: 1000)
            result.append(newLine)
        } else {
            throw ProfilePathError.elementNotAppended
        }
        return result
    }


    fileprivate func appending(intersectingLine newLine: LineElement,
                               connectingWith: ConnectingElementDescription? = nil) -> [PathElement] {
        if let lastLine = self.last as? LineElement {
        if let intersection = try? GeometricCalculations.intersection(lastLine, newLine) {
                if let fillet = connectingWith as? Fillet {
                    if let filletArc = try? GeometricCalculations.fillet(lastLine, newLine, radius: fillet.radius) {
                        var result: [PathElement] = dropLast()
                        result.append(LineElement(start: lastLine.start, end: filletArc.start))
                        result.append(ArcElement(center: filletArc.center,
                                                 radius: filletArc.radius,
                                                 start: filletArc.start,
                                                 end: filletArc.end,
                                                 negativeDirection: filletArc.negativeDirection))
                        result.append(LineElement(start: filletArc.end,
                                                  end: newLine.end,
                                                  isEndValidEndPoint: newLine.isEndValidEndPoint))
                        return result
                    }
                } else {
                    var result: [PathElement] = self.dropLast()
                    result.append(LineElement(start: lastLine.start, end: intersection.point))
                    result.append(LineElement(start: intersection.point,
                                              end: newLine.end,
                                              isEndValidEndPoint: newLine.isEndValidEndPoint))
                    return result
                }
            }
        } else if let lastArc = self.last as? ArcElement {
            if let fillet = connectingWith as? Fillet {
                if let filletArc = try? GeometricCalculations.fillet(lastArc, newLine, radius: fillet.radius) {
                    var result: [PathElement] = dropLast()
                    result.append(ArcElement(center: lastArc.center,
                                             radius: lastArc.radius,
                                             start: lastArc.start,
                                             end: filletArc.start,
                                             negativeDirection: lastArc.negativeDirection))
                    result.append(ArcElement(center: filletArc.center,
                                             radius: filletArc.radius,
                                             start: filletArc.start,
                                             end: filletArc.end,
                                             negativeDirection: filletArc.negativeDirection))
                    result.append(LineElement(start: filletArc.end,
                                              end: newLine.end,
                                              isEndValidEndPoint: newLine.isEndValidEndPoint))
                    return result
                }
            }
        }

        return self
    }


// TODO: shorten the function
// swiftlint:disable function_body_length
    func appending(_ arc: Arc, with connectingElement: ConnectingElementDescription? = nil) throws -> [PathElement] {
        var result = self
        if let center = arc.center,
            let start = arc.start,
            let toX = arc.toX {
            let end = Arc.endPoint(center: center,
                                   radius: arc.radius,
                                   start: start,
                                   toX: toX,
                                   negativeDirection: arc.negativeDirection)
            result.append(ArcElement(center: center,
                                     radius: arc.radius,
                                     start: start,
                                     end: end,
                                     negativeDirection: arc.negativeDirection))
        } else if let last = last,
                  let toX = arc.toX,
                  let curPoint = last.endPoint {
            let center = GeometricCalculations.arcCenter(tangentiallyAppendingTo: curPoint,
                                                         heading: last.endHeading,
                                                         radius: arc.radius,
                                                         negativeDirection: arc.negativeDirection)
            let end = Arc.endPoint(center: center,
                                   radius: arc.radius,
                                   start: curPoint,
                                   toX: toX,
                                   negativeDirection: arc.negativeDirection)
            result.append(ArcElement(center: center,
                                     radius: arc.radius,
                                     start: curPoint,
                                     end: end,
                                     negativeDirection: arc.negativeDirection))
        } else if let last = last,
                  let endAngle = arc.endAngle,
                  let curPoint = last.endPoint {
            let center = GeometricCalculations.arcCenter(tangentiallyAppendingTo: curPoint,
                                                         heading: last.endHeading,
                                                         radius: arc.radius,
                                                         negativeDirection: arc.negativeDirection)
            let startAngle = arc.negativeDirection
            ? last.endHeading + Angle(degrees: 90)
            : last.endHeading - Angle(degrees: 90)
            result.append(ArcElement(center: center,
                                     radius: arc.radius,
                                     startAngle: startAngle,
                                     endAngle: endAngle,
                                     negativeDirection: arc.negativeDirection))
        } else if let last = last as? LineElement,
                  let centerY = arc.centerY,
                  connectingElement == nil {
            let parallelLine: LineElement
            if arc.negativeDirection {
                parallelLine = GeometricCalculations.parallel(to: last, distance: arc.radius)
            } else {
                parallelLine = GeometricCalculations.parallel(to: last, distance: -arc.radius)
            }
            let horizontalAtY = LineElement(start: CGPoint(x: 0.0, y: centerY), end: CGPoint(x: 10.0, y: centerY))
            if let center = try? GeometricCalculations.intersection(parallelLine, horizontalAtY) {
                let perpendicularThroughCenter = GeometricCalculations.perpendicular(to: last, through: center.point)
                if let start = try? GeometricCalculations.intersection(last, perpendicularThroughCenter) {
                    result = result.dropLast()
                    result.append(LineElement(start: last.start, end: start.point))
                    result.append(ArcElement(center: center.point,
                                             radius: arc.radius,
                                             start: start.point,
                                             end: start.point,
                                             negativeDirection: arc.negativeDirection))
                }
            }
        } else if let last = last as? ArcElement, // This is working only for same direction arcs!
                  let centerY = arc.centerY,
                  connectingElement == nil {
            let parallelArc = ArcElement(center: last.center,
                                         radius: last.radius - arc.radius,
                                         startAngle: last.startAngle,
                                         endAngle: last.endAngle,
                                         negativeDirection: last.negativeDirection)
            let horizontalAtY = LineElement(start: CGPoint(x: 0.0, y: centerY), end: CGPoint(x: 10.0, y: centerY))
            do {
                let potentialNewArcCenters = try GeometricCalculations.intersections(parallelArc, horizontalAtY).sorted {
                    let arcLength0 = last.angularLength(to: $0.point)
                    let arcLength1 = last.angularLength(to: $1.point)
                    return abs(arcLength0.degrees) < abs(arcLength1.degrees)
                }
                if let center = potentialNewArcCenters.first?.point {
                    let newIntersectionAngle = GeometricCalculations.angle(of: center, inRespectTo: last.center)
                    result = result.dropLast()
                    result.append(ArcElement(center: last.center,
                                             radius: last.radius,
                                             startAngle: last.startAngle,
                                             endAngle: newIntersectionAngle,
                                             negativeDirection: last.negativeDirection))
                    result.append(ArcElement(center: center,
                                             radius: arc.radius,
                                             startAngle: newIntersectionAngle,
                                             endAngle: newIntersectionAngle,
                                             negativeDirection: arc.negativeDirection))
                } else {
                    throw ProfilePathError.elementNotAppended
                }
            } catch {
                throw ProfilePathError.elementNotAppended
            }
        } else {
            throw ProfilePathError.elementNotAppended
        }
        return result
    }



    func appending(_ path: [PathElement],
                   with connectingElement: ConnectingElementDescription?) -> [PathElement] {
        if let connectingElement {
            if let first = self.last,
               let last = path.first {
                let connectingElements: [PathElement]
                connectingElements = connection(first, connectingElement, last)
                return Array(self.dropLast()) + connectingElements + Array(path.dropFirst())
            }
        }
        // TODO: This should perhaps calculate the intersection and reduce the length of another element accordingly
        let result: [PathElement] = self + path
        return result
    }


    internal func connection(_ firstElement: PathElement,
                             _ connectingElement: ConnectingElementDescription,
                             _ secondElement: PathElement) -> [PathElement] {
        if let line = firstElement as? LineElement,
           let arc = secondElement as? ArcElement,
           let fillet = connectingElement as? Fillet {
            return connection(arc: arc.reversed, fillet: fillet, line: line.reversed).reversedCompletely()
        } else if let arc = firstElement as? ArcElement,
                  let line = secondElement as? LineElement,
                  let fillet = connectingElement as? Fillet {
            return connection(arc: arc, fillet: fillet, line: line)
        } else if let line0 = firstElement as? LineElement,
                  let line1 = secondElement as? LineElement,
                  let fillet = connectingElement as? Fillet {
            return connection(line0: line0, fillet: fillet, line1: line1)
        } else {
            return [firstElement, secondElement]
        }
    }


    private func connection(arc: ArcElement, fillet: Fillet, line: LineElement) -> [PathElement] {
        if let filletArc = try? GeometricCalculations.fillet(arc, line, radius: fillet.radius) {
            let modifiedArc = ArcElement(center: arc.center,
                                         radius: arc.radius,
                                         start: arc.start,
                                         end: filletArc.start,
                                         negativeDirection: filletArc.negativeDirection)
            let modifiedLine = LineElement(start: filletArc.end, end: line.end)
            return [modifiedArc, filletArc, modifiedLine]
        } else {
            return [arc, line]
        }
    }


    private func connection(line0: LineElement, fillet: Fillet, line1: LineElement) -> [PathElement] {
        if let filletArc = try? GeometricCalculations.fillet(line0, line1, radius: fillet.radius) {
            let modifiedLine0 = LineElement(start: line0.start, end: filletArc.start)
            let modifiedLine1 = LineElement(start: filletArc.end, end: line1.end)
            return [modifiedLine0, filletArc, modifiedLine1]
        } else {
            return [line0, line1]
        }
    }
}



enum ProfilePathError: Error {
    case elementNotAppended
}
