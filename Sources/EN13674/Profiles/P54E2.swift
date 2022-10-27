//
//  P54E2.swift
//  
//
//  Created by André Rohrbeck on 21.10.22.
//

import Foundation


internal struct P54E2: RailProfile {
    public var description: String {
        "EN 13674 – 54E2"
    }



    public func profile(resolution: Double) -> [CGPoint] {
        return P54E2.profile.profile(resolution: resolution)
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -18.946/2.0, .counterclockwise)
        Arc(radius: 80, toX: -46.310/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -20.0))
        Line()
        Fillet(radius: 2)
        Line(Angle(dx: 2.75, dy: -1), to: (0.0, -51.4))
        Fillet(radius: 8)
        Arc(radius: 22, centerY: -161+76.2+25.4, .clockwise)
        Arc(radius: 508, center: (-516, -161+76.2), .clockwise)
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
        Arc(radius: 508, center: (516, -161+76.2), .clockwise)
        Arc(radius: 22, centerY: -161+76.2+25.4, .clockwise)
        Fillet(radius: 8)
        Line(from: (0.0, -51.4), Angle(dx: 2.75, dy: 1))
        Fillet(radius: 2)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1.0, dy: 20.0), .counterclockwise)
        Arc(radius: 80, fromX: 46.310/2.0, .counterclockwise)
        Arc(radius: 300, center: (0, -300), fromX: 18.946/2.0, to: (0, 0), .counterclockwise)
    }

}
