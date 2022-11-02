//
//  P50E4.swift
//  
//
//  Created by André Rohrbeck on 15.10.22.
//

import Foundation

internal struct P50E4: RailProfile {
    public var description: String {
        "EN 13674 – 50E4"
    }



    public var legacyDescription: String? {
        "UIC 50"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -20.025/2.0, .counterclockwise)
        Arc(radius: 80, toX: -49.727/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 3)
        Line(Angle(dx: 2.75, dy: -1), to: (0.0, -49.4))
        Fillet(radius: 8)
        Arc(radius: 22, centerY: -152+75.1+18.6, .clockwise)
        Arc(radius: 508, center: (-515.5, -152+75.1), .clockwise)
        Fillet(radius: 15)
        Line(from: (0, -152+28), Angle(dx: -2.75, dy: -1))
        Fillet(radius: 20)
        Line(Angle(dx: -8.01, dy: -1), to: (-62.5, -142))
        Fillet(radius: 3)
        Line(to: (-62.5, -152))
        Fillet(radius: 2)
        Line(to: (62.5, -152))
        Fillet(radius: 2)
        Line(to: (62.5, -142))
        Fillet(radius: 3)
        Line(from: (62.5, -142), Angle(dx: -8.01, dy: 1))
        Fillet(radius: 20)
        Line(Angle(dx: -2.75, dy: 1), to: (0, -152+28))
        Fillet(radius: 15)
        Arc(radius: 508, center: (515.5, -152+75.1), .clockwise)
        Arc(radius: 22, centerY: -152+75.1+18.6, .clockwise)
        Fillet(radius: 8)
        Line(from: (0, -49.4), Angle(dx: 2.75, dy: 1))
        Fillet(radius: 3)
        Line(Angle(dx: -1, dy: 20))
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(radius: 80, fromX: 49.727/2.0, .counterclockwise)
        Arc(center: (0, -300), fromX: 20.025/2.0, to: (0, 0), .counterclockwise)
    }
}
