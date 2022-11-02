//
//  P49E1.swift
//  
//
//  Created by André Rohrbeck on 12.10.22.
//

import Foundation

internal struct P49E1: RailProfile {
    public var description: String {
        "EN 13674 – 49E1"
    }



    var legacyDescription: String? {
        "DIN S49"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -15.267/2.0, .counterclockwise)
        Arc(radius: 80, toX: -46.835/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -17.2))
        Line()
        Fillet(radius: 2)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -51.5))
        Fillet(radius: 7)
        Arc(radius: 80, centerY: -67, .clockwise)
        Line(from: (-7, -67), to: (-7, -97))
        Arc(radius: 120, centerY: -97, .clockwise)
        Fillet(radius: 7)
        Line(from: (0, -121.5), Angle(dx: -3, dy: -1))
        Fillet(radius: 40)
        Line(Angle(dx: -7.81, dy: -1), to: (-62.5, -138.5))
        Fillet(radius: 3)
        Line(to: (-62.5, -149))
        Fillet(radius: 1.5)
        Line(to: (62.5, -149))
        Fillet(radius: 1.5)
        Line(to: (62.5, -138.5))
        Fillet(radius: 3)
        Line(from: (62.5, -138.5), Angle(dx: -7.81, dy: 1))
        Fillet(radius: 40)
        Line(Angle(dx: -3, dy: 1), to: (0, -121.5))
        Fillet(radius: 7)
        Arc(radius: 120, centerY: -149+52, .clockwise)
        Line(from: (7, -149+52), to: (7, -149+82))
        Arc(radius: 80, centerY: -149+82, .clockwise)
        Fillet(radius: 7)
        Line(from: (0, -51.5), Angle(dx: 3, dy: 1))
        Fillet(radius: 2)
        Line(Angle(dx: -1, dy: 17.2))
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 17.2), .counterclockwise)
        Arc(radius: 80, fromX: 46.835/2.0, .counterclockwise)
        Arc(center: (0, -300), fromX: 15.267/2.0, to: (0, 0), .counterclockwise)
    }
}
