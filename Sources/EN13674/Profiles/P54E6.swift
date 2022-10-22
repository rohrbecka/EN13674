//
//  P54E6.swift
//  
//
//  Created by André Rohrbeck on 22.10.22.
//

import Foundation


internal struct P54E6: RailProfile {
    public var description: String {
        "EN 13674 – 54E6"
    }



    public func profile(resolution: Double) -> [CGPoint] {
        let profile = Path {
            Arc(center: (0, -300), from: (0, 0), toX: -5.91/2.0, .counterclockwise)
            Arc(radius: 80, toX: -51.97/2.0, .counterclockwise)
            Arc(radius: 16, toX: -66.5/2.0, .counterclockwise)
            Arc(radius: 5, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -20))
            Line()
            Fillet(radius: 2)
            Line(Angle(dx: 2.75, dy: -1), to: (0.0, -51.4))
            Fillet(radius: 8)
            // TODO: These two arcs are not working...
            Arc(radius: 22, centerY: -161+76.2+25.4, .clockwise)
            Arc(radius: 508, centerY: -161+76.2, .clockwise)
            // TODO: workaround for the arc
            Line(from: (-8, -161+76.2001), to: (-8, -161+76.1999))
            Arc(radius: 508, centerY: -161+76.2, .clockwise)
            Fillet(radius: 16)
            Line(from: (0, -161+30.2), Angle(dx: -2.75, dy: -1))
            Fillet(radius: 20)
            Line(Angle(dx: -10, dy: -1), to: (-62.5, -161+12))
            Fillet(radius: 3)
            Line(to: (-62.5, -161))
            Fillet(radius: 2)
            Line(to: (62.5, -161))
            Fillet(radius: 2)
            Line(to: (62.5, -161+12))
            Fillet(radius: 3)
            Line(from: (62.5, -161+12), Angle(dx: -10, dy: 1))
            Fillet(radius: 20)
            Line(Angle(dx: -2.75, dy: 1), to: (0, -161+30.2))
            Fillet(radius: 16)
            Arc(radius: 508, centerY: -161+76.2, .clockwise)
            // TODO: workaround for the arc
            Line(from: (8, -161+76.1999), to: (8, -161+76.2001))
            // TODO: These two arcs are not working...
            Arc(radius: 508, centerY: -161+76.2, .clockwise)
            Arc(radius: 22, centerY: -161+76.2+25.4, .clockwise)
            Fillet(radius: 16)
            Line(from: (0.0, -51.4), Angle(dx: 2.75, dy: 1))
            Fillet(radius: 2)
            Line()
            Arc(radius: 5, fromHeading: Angle(dx: -1.0, dy: 20), .counterclockwise)
            Arc(radius: 16, fromX: 66.5/2.0, .counterclockwise)
            Arc(radius: 80, fromX: 51.97/2.0, .counterclockwise)
            Arc(radius: 300, center: (0, -300), fromX: 5.91/2.0, to: (0, 0), .counterclockwise)
        }
        return profile.profile(resolution: resolution)
    }
}
