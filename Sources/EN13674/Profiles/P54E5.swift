//
//  P54E5.swift
//  
//
//  Created by André Rohrbeck on 22.10.22.
//

import Foundation

internal struct P54E5: RailProfile {
    public var description: String {
        "EN 13674 – 54E5"
    }



    public var legacyDescription: String? {
        "54E1AHC"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -5.91/2.0, .counterclockwise)
        Arc(radius: 80, toX: -51.97/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -20))
        Line()
        Fillet(radius: 3)
        Line(Angle(dx: 2.75, dy: -1), to: (0.0, -49.4))
        Fillet(radius: 8)
        Arc(radius: 22, centerY: -159+76.2+25.4, .clockwise)
        Arc(radius: 508, center: (-516, -159+76.2), .clockwise)
        Fillet(radius: 16)
        Line(from: (0, -159+30.29), Angle(dx: -2.75, dy: -1))
        Fillet(radius: 20)
        Line(Angle(dx: -10, dy: -1), to: (-70, -159+11))
        Fillet(radius: 3)
        Line(to: (-70, -159))
        Fillet(radius: 2)
        Line(to: (70, -159))
        Fillet(radius: 2)
        Line(to: (70, -159+11))
        Fillet(radius: 3)
        Line(from: (70, -159+11), Angle(dx: -10, dy: 1))
        Fillet(radius: 20)
        Line(Angle(dx: -2.75, dy: 1), to: (0, -159+30.2))
        Fillet(radius: 16)
        Arc(radius: 508, center: (516, -159+76.2), .clockwise)
        Arc(radius: 22, centerY: -159+76.2+25.4, .clockwise)
        Fillet(radius: 8)
        Line(from: (0.0, -49.4), Angle(dx: 2.75, dy: 1))
        Fillet(radius: 3)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1.0, dy: 20), .counterclockwise)
        Arc(radius: 80, fromX: 51.97/2.0, .counterclockwise)
        Arc(center: (0, -300), fromX: 5.91/2.0, to: (0, 0), .counterclockwise)
    }
}
