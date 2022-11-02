//
//  P50E6.swift
//  
//
//  Created by André Rohrbeck on 15.10.22.
//

import Foundation

internal struct P50E6: RailProfile {
    public var description: String {
        "EN 13674 – 50E6"
    }



    public var legacyDescription: String? {
        "U 50"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -30.942/2.0, .counterclockwise)
        Arc(radius: 60, toX: -43.838/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 2)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -49))
        Fillet(radius: 12)
        Line(from: (-7.75, -49), to: (-7.75, -153+28))
        Fillet(radius: 12)
        Line(from: (0, -153+28), Angle(dx: -3, dy: -1))
        Fillet(radius: 20)
        Line(Angle(dx: -10, dy: -1), to: (-70, -153+11.2))
        Fillet(radius: 3)
        Line(to: (-70, -153))
        Fillet(radius: 2)
        Line(to: (70, -153))
        Fillet(radius: 2)
        Line(to: (70, -153+11.2))
        Fillet(radius: 3)
        Line(from: (70, -153+11.2), Angle(dx: -10, dy: 1))
        Fillet(radius: 20)
        Line(Angle(dx: -3, dy: 1), to: (0, -153+28))
        Fillet(radius: 12)
        Line(from: (7.75, -153+28), to: (7.75, -49))
        Fillet(radius: 12)
        Line(from: (0, -49), Angle(dx: 3, dy: 1))
        Fillet(radius: 2)
        Line(Angle(dx: -1, dy: 20))
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(radius: 60, fromX: 43.838/2.0, .counterclockwise)
        Arc(center: (0, -200), fromX: 30.942/2.0, to: (0, 0), .counterclockwise)
    }
}
