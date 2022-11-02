//
//  P54E3.swift
//  
//
//  Created by André Rohrbeck on 22.10.22.
//

import Foundation

internal struct P54E3: RailProfile {
    public var description: String {
        "EN 13674 – 54E3"
    }



    public var legacyDescription: String? {
        "DIN S54"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -15.267/2.0, .counterclockwise)
        Arc(radius: 80, toX: -46.835/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -17.2))
        Line()
        Fillet(radius: 5)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -55))
        Fillet(radius: 16)
        Arc(radius: 500, center: (-508, -154+75), .clockwise)
        Fillet(radius: 16)
        Line(from: (0, -154+29), Angle(dx: -3, dy: -1))
        Fillet(radius: 40)
        Line(Angle(dx: -7.81, dy: -1), to: (-62.5, -154+12))
        Fillet(radius: 3)
        Line(to: (-62.5, -154))
        Fillet(radius: 2)
        Line(to: (62.5, -154))
        Fillet(radius: 2)
        Line(to: (62.5, -154+12))
        Fillet(radius: 3)
        Line(from: (62.5, -154+12), Angle(dx: -7.81, dy: 1))
        Fillet(radius: 40)
        Line(Angle(dx: -3, dy: 1), to: (0, -154+29))
        Fillet(radius: 16)
        Arc(radius: 500, center: (508, -154+75), .clockwise)
        Fillet(radius: 16)
        Line(from: (0.0, -55), Angle(dx: 3, dy: 1))
        Fillet(radius: 5)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1.0, dy: 17.2), .counterclockwise)
        Arc(radius: 80, fromX: 46.835/2.0, .counterclockwise)
        Arc(center: (0, -300), fromX: 15.267/2.0, to: (0, 0), .counterclockwise)
    }
}
