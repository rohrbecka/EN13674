//
//  P50E1.swift
//  
//
//  Created by André Rohrbeck on 13.10.22.
//

import Foundation

internal struct P50E1: RailProfile {
    public var description: String {
        "EN 13674-1 – 50E1"
    }



    public var legacyDescription: String? {
        "U50E"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -30.942/2.0, .counterclockwise)
        Arc(radius: 60, toX: -43.838/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 2)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -49))
        Fillet(radius: 12)
        Line(from: (-7.75, -50), to: (-7.75, -125))
        Fillet(radius: 12)
        Line(from: (0, -125), Angle(dx: -3, dy: -1))
        Fillet(radius: 20)
        Line(Angle(dx: -10, dy: -1), to: (-67, -141.5))
        Fillet(radius: 3)
        Line(to: (-67, -153))
        Fillet(radius: 2)
        Line(to: (67, -153))
        Fillet(radius: 2)
        Line(to: (67, -141.5))
        Fillet(radius: 3)
        Line(from: (67, -141.5), Angle(dx: -10, dy: 1))
        Fillet(radius: 20)
        Line(Angle(dx: -3, dy: 1), to: (0, -125))
        Fillet(radius: 12)
        Line(from: (7.75, -125), to: (7.75, -50))
        Fillet(radius: 12)
        Line(from: (0, -49), Angle(dx: 3, dy: 1))
        Fillet(radius: 2)
        Line(Angle(dx: -1, dy: 20))
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(radius: 60, fromX: 43.838/2.0, .counterclockwise)
        Arc(center: (0, -200), fromX: 30.942/2.0, to: (0, 0), .counterclockwise)
    }
}
