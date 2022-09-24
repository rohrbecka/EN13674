//
//  Arc.swift
//  
//
//  Created by André Rohrbeck on 15.09.22.
//

import Foundation

/// The description of an Arc within a `Path` description.
///
/// The arc description may consist of several boudary conditions. Where an arc can be uniquely described
/// by a start end end angle, a direction and a radius, it may be good enough to give less information.
/// ``Arc`` allows a client to do so, and relies on the ``PathBuilder`` to generate the path out of it.
/// Therefore, an ``Arc`` description can't be 'incomplete' only within the context given by the other Path elements
/// it may be insufficient to be uniquely defined, which may prevent rendering.
struct Arc: PathElementDescription {

    /// The radius of the arc, which must be given.
    var radius: CGFloat

    /// The center of the arc.
    var center: CGPoint?

    /// The starting point.
    var start: CGPoint?

    /// The ending point.
    var end: CGPoint?

    /// The x-coordinate of the endpoint.
    var toX: CGFloat?

    /// Whether the arc is drawn in negative (clockwise) or positive (counterclockwise) direction.
    var negativeDirection: Bool

    /// The y-coordinate of the center.
    var centerY: Double?


    /// Describes an arc based on the starting point, the x-coordinate of the end point, the center and the radius.
    ///
    /// - Parameters:
    ///   - center: The center of the arc.
    ///   - start: The starting point
    ///   - endX: The x-coordinate of the ending point
    ///   - direction: The direction in which the arc is drawn.
    init(center: (CGFloat, CGFloat),
         from start: (CGFloat, CGFloat),
         toX endX: CGFloat,
         _ direction: Direction) {
        self.center = CGPoint(center)
        self.start = CGPoint(start)
        self.radius = CGPoint(center).distance(to: CGPoint(start))
        self.toX = endX
        self.negativeDirection = direction == .clockwise
    }



    /// Creates an Arc with a given radius going in the given `direction` until the given X-coordinate.
    /// For this to work there must be a previous element with a given end point and end directon. The
    /// new Arc will attach tangentially to the previous path element.
    init(radius: CGFloat,
         toX endX: CGFloat,
         _ direction: Direction) {
        self.radius = radius
        self.toX = endX
        self.negativeDirection = direction == .clockwise
    }



    init(radius: Double, centerY: Double, _ direction: Direction) {
        self.radius = radius
        self.negativeDirection = direction == .clockwise
        self.centerY = centerY
    }

    

    static func endPoint(center: CGPoint, radius: CGFloat, start: CGPoint, toX: CGFloat, negativeDirection: Bool ) -> CGPoint {
        let dx = toX - center.x
        let targetAngle0 = acos(dx / radius)
        let targetAngle1 = -targetAngle0
        let startAngle = Sampler.angle(of: start, inRespectTo: center)
        let directionFactor = negativeDirection ? -1.0 : 1.0
        let distanceToTarget0 = (directionFactor * (targetAngle0 - startAngle)).normalised(0.0..<Double.pi)
        let distanceToTarget1 = (directionFactor * (targetAngle1 - startAngle)).normalised(0.0..<Double.pi)

        if distanceToTarget0 <= distanceToTarget1 {
            return GeometricCalculations.circlePoint(center: center, radius: radius, angle: targetAngle0)
        } else {
            return GeometricCalculations.circlePoint(center: center, radius: radius, angle: targetAngle0)
        }

    }
}
