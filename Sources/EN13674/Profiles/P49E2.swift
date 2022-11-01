//
//  P49E2.swift
//  
//
//  Created by André Rohrbeck on 12.10.22.
//

import Foundation

internal struct P49E2: RailProfile {
    public var description: String {
        "EN 13674 – 49E2"
    }



    public var legacyDescription: String? {
        "S49 T"
    }



    internal static var profile = Path {
        Arc(center: (0, -400), from: (0, 0), toX: -40.471/2.0, .counterclockwise)
        Arc(radius: 14, .counterclockwise, toHeading: Angle(dx: -1, dy: -16))
        Line()
        Fillet(radius: 2)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -50.5))
        Fillet(radius: 7)
        Arc(radius: 80, centerY: -66, .clockwise)
        Line(from: (-7, -66), to: (-7, -96))
        Arc(radius: 120, centerY: -96, .clockwise)
        Fillet(radius: 7)
        Line(from: (0, -120.5), Angle(dx: -3, dy: -1))
        Fillet(radius: 40)
        Line(Angle(dx: -7.81, dy: -1), to: (-62.5, -137.5))
        Fillet(radius: 3)
        Line(to: (-62.5, -148))
        Fillet(radius: 1.5)
        Line(to: (62.5, -148))
        Fillet(radius: 1.5)
        Line(to: (62.5, -137.5))
        Fillet(radius: 3)
        Line(from: (62.5, -137.5), Angle(dx: -7.81, dy: 1))
        Fillet(radius: 40)
        Line(Angle(dx: -3, dy: 1), to: (0, -120.5))
        Fillet(radius: 7)
        Arc(radius: 120, centerY: -148+52, .clockwise)
        Line(from: (7, -148+52), to: (7, -148+82))
        Arc(radius: 80, centerY: -148+82, .clockwise)
        Fillet(radius: 7)
        Line(from: (0, -50.5), Angle(dx: 3, dy: 1))
        Fillet(radius: 2)
        Line(Angle(dx: -1, dy: 16))
        Arc(radius: 14, fromHeading: Angle(dx: -1, dy: 16), .counterclockwise)
        Arc(radius: 400, center: (0, -400), fromX: 40.471/2.0, to: (0, 0), .counterclockwise)
    }
}
