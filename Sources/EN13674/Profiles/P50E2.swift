//
//  P50E2.swift
//  
//
//  Created by André Rohrbeck on 13.10.22.
//

import Foundation

internal struct P50E2: RailProfile {
    public var description: String {
        "EN 13674 – 50E2"
    }



    public var legacyDescription: String? {
        "50EB-T"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -20.456/2.0, .counterclockwise)
        Arc(radius: 80, toX: -52.053/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 2)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -44))
        Fillet(radius: 8)
        Arc(radius: 30.81, centerY: -151+28+69, .clockwise)
        Line(from: (-7.5, -50), to: (-7.5, -125))
        Arc(radius: 30.81, centerY: -151+28+10, .clockwise)
        Fillet(radius: 8)
        Line(from: (0, -123), Angle(dx: -3, dy: -1))
        Fillet(radius: 10)
        Line(Angle(dx: -8, dy: -1), to: (-70, -151+11.13))
        Fillet(radius: 5)
        Line(to: (-70, -151))
        Fillet(radius: 2)
        Line(to: (70, -151))
        Fillet(radius: 2)
        Line(to: (70, -151+11.13))
        Fillet(radius: 5)
        Line(from: (70, -151+11.13), Angle(dx: -8, dy: 1))
        Fillet(radius: 10)
        Line(Angle(dx: -3, dy: 1), to: (0, -123))
        Fillet(radius: 8)
        Arc(radius: 30.81, centerY: -151+38, .clockwise)
        Line(from: (7.5, -125), to: (7.5, -50))
        Arc(radius: 30.81, centerY: -151+38+59, .clockwise)
        Fillet(radius: 8)
        Line(from: (0, -44), Angle(dx: 3, dy: 1))
        Fillet(radius: 2)
        Line(Angle(dx: -1, dy: 20))
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(radius: 80, fromX: 52.053/2.0, .counterclockwise)
        Arc(radius: 300, center: (0, -300), fromX: 20.456/2.0, to: (0, 0), .counterclockwise)
    }
}
