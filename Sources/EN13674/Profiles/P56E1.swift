//
//  P56E1.swift
//  
//
//  Created by André Rohrbeck on 22.10.22.
//

import Foundation

internal struct P56E1: RailProfile {
    public var description: String {
        "EN 13674 – 56E1"
    }



    public var legacyDescription: String? {
        "BS 113lb BR Variant"
    }



    internal static var profile = Path {
        Arc(center: (0, -305), from: (0, 0), toX: -11.787/2.0, .counterclockwise)
        Arc(radius: 80, toX: -51.235/2.0, .counterclockwise)
        Arc(radius: 12.7, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -20))
        Line()
        Fillet(radius: 3)
        Line(Angle(dx: 2.75, dy: -1), to: (0.0, -49.21))
        Fillet(radius: 8)
        Line(from: (-10, -49.21), to: (-10, -158.75+30.16))
        Fillet(radius: 15)
        Line(from: (0, -158.75+30.16), Angle(dx: -2.75, dy: -1))
        Fillet(radius: 20)
        Line(Angle(dx: -10, dy: -1), to: (-70, -158.75+11.2))
        Fillet(radius: 3)
        Line(to: (-70, -158.75))
        Fillet(radius: 1.5)
        Line(to: (70, -158.75))
        Fillet(radius: 1.5)
        Line(to: (70, -158.75+11.2))
        Fillet(radius: 3)
        Line(from: (70, -158.75+11.2), Angle(dx: -10, dy: 1))
        Fillet(radius: 20)
        Line(Angle(dx: -2.75, dy: 1), to: (0, -158.75+30.16))
        Fillet(radius: 15)
        Line(from: (10, -158.75+30.16), to: (10, -49.21))
        Fillet(radius: 8)
        Line(from: (0.0, -49.21), Angle(dx: 2.75, dy: 1))
        Fillet(radius: 3)
        Line()
        Arc(radius: 12.7, fromHeading: Angle(dx: -1.0, dy: 20), .counterclockwise)
        Arc(radius: 80, fromX: 51.235/2.0, .counterclockwise)
        Arc(radius: 305, center: (0, -305), fromX: 11.787/2.0, to: (0, 0), .counterclockwise)
    }
}
