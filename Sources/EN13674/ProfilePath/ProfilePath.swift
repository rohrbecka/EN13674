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
                result = result + Sampler.straightLine(from: line.start, to: line.end, resolution: resolution)
            } else if let arc = element as? ArcElement {
                result = result + Sampler.arc(from: arc.start, to: arc.end, center: arc.center, radius: arc.radius, negativeDirection: arc.negativeDirection, resolution: resolution)
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
        var result = [PathElement]()
        var connectingElement: ConnectingElementDescription?
        for element in elements {
            if result.count == 0 {
                result = result.appendingFirstElement(element)
            } else if let line = element as? Line {
                result = result.appending(line, connectingWith: connectingElement)
                connectingElement = nil
            } else if let arc = element as? Arc {
                do {
                    result = try result.appending(arc, connectingWith: connectingElement)
                    connectingElement = nil
                } catch {
                    // TODO: do something intelligent store until somthing can be drawn, then walk back
                }
            } else if let connection = element as? ConnectingElementDescription {
                connectingElement = connection
            }
        }
        return result
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
        guard let start = line.from, let end = line.to else {
            return []
        }
        var result = self
        result.append(LineElement(start: start, end: end))
        return result
    }

    fileprivate func appending(_ line: Line, connectingWith connectingElement: ConnectingElementDescription? = nil) -> [PathElement] {
        var result = self
        if let start = line.from,
           let end = line.to {
            if last is LineElement {
                let newLine = LineElement(start: start, end: end)
                result = result.appending(intersectingLine: newLine,
                                          connectingWith: connectingElement)
            } else if last is ArcElement {
                let newLine = LineElement(start: start, end: end)
                result = result.appending(intersectingLine: newLine,
                                         connectingWith: connectingElement)
            } else if let currentPoint = result.last?.end {
                result.append(LineElement(start: currentPoint, end: end))
            } else {
                result.append(LineElement(start: start, end: end))
            }
        }
        else if let end = line.to, let curPoint = result.last?.end {
            let newLine = LineElement(start: curPoint, end: end)
            if result.last is LineElement {
                result = result.appending(intersectingLine: newLine,
                                          connectingWith: connectingElement)
            } else {
                result.append(LineElement(start: curPoint, end: end))
            }
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
                        result.append(LineElement(start: filletArc.end, end: newLine.end))
                        return result
                    }
                } else {
                    var result: [PathElement] = self.dropLast()
                    result.append(LineElement(start: lastLine.start, end: intersection.point))
                    result.append(LineElement(start: intersection.point, end: newLine.end))
                    return result
                }
            }
        } else if let lastArc = self.last as? ArcElement {
            if let fillet = connectingWith as? Fillet {
                if let filletArc = try? GeometricCalculations.fillet(lastArc, newLine, radius: fillet.radius) {
                    var result: [PathElement] = dropLast()
                    result.append(ArcElement(center: lastArc.center, radius: lastArc.radius, start: lastArc.start, end: filletArc.start, negativeDirection: lastArc.negativeDirection))
                    result.append(ArcElement(center: filletArc.center, radius: filletArc.radius, start: filletArc.start, end: filletArc.end, negativeDirection: filletArc.negativeDirection))
                    result.append(LineElement(start: filletArc.end, end: newLine.end))
                    return result
                }
            }
        }

        return self
    }


    func appending(_ arc: Arc, connectingWith connectingElement: ConnectingElementDescription? = nil) throws -> [PathElement] {
        var result = self
        if let center = arc.center,
            let start = arc.start,
            let toX = arc.toX {
            let end = Arc.endPoint(center: center, radius: arc.radius, start: start, toX: toX, negativeDirection: arc.negativeDirection)
            result.append(ArcElement(center: center, radius: arc.radius, start: start, end: end, negativeDirection: arc.negativeDirection))
        } else if let last = last,
                  let toX = arc.toX {
            let center = GeometricCalculations.arcCenter(tangentiallyAppendingTo: last.end,
                                                         heading: last.endHeading,
                                                         radius: arc.radius,
                                                         negativeDirection: arc.negativeDirection)
            let end = Arc.endPoint(center: center, radius: arc.radius, start: last.end, toX: toX, negativeDirection: arc.negativeDirection)
            result.append(ArcElement(center: center, radius: arc.radius, start: last.end, end: end, negativeDirection: arc.negativeDirection))
        } else if let last = last as? LineElement,
                  let centerY = arc.centerY,
                  connectingElement == nil {
            let parallelLine: LineElement
            if arc.negativeDirection {
                parallelLine = GeometricCalculations.parallel(to: last, distance: arc.radius)
            } else {
                parallelLine = GeometricCalculations.parallel(to: last, distance: -arc.radius)
            }
            if let center = try? GeometricCalculations.intersection(parallelLine, LineElement(start: CGPoint(x: 0.0, y: centerY), end: CGPoint(x: 10.0, y: centerY))) {
                let perpendicularLineThroughCenter = GeometricCalculations.perpendicular(to: last, through: center.point)
                if let start = try? GeometricCalculations.intersection(last, perpendicularLineThroughCenter) {
                    result = result.dropLast()
                    result.append(LineElement(start: last.start, end: start.point))
                    result.append(ArcElement(center: center.point, radius: arc.radius, start: start.point, end: start.point, negativeDirection: arc.negativeDirection))
                }
            }
        } else {
            throw ProfilePathError.elementNotAppended
        }
        return result
    }
}



enum ProfilePathError: Error {
    case elementNotAppended
}
