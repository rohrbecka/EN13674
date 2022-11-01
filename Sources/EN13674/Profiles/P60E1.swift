//
//  P60E1.swift
//  
//
//  Created by André Rohrbeck on 22.10.22.
//

import Foundation

internal struct P60E1: RailProfile {
    public var description: String {
        "EN 13674 – 60E1"
    }



    public var legacyDescription: String? {
        "UIC 60"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -20.456/2.0, .counterclockwise)
        Arc(radius: 80, toX: -52.053/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -20))
        Line()
        Fillet(radius: 3)
        Line(Angle(dx: 2.75, dy: -1), to: (0.0, -51))
        Fillet(radius: 7)
        Arc(radius: 35, centerY: -172+31.5+28.75+32+19.5, .clockwise)
        Arc(radius: 120, centerY: -172+31.5+28.75+32, .clockwise)
        Line(from: (-8.25, -172+31.5+28.75+32), to: (-8.25, -172+31.5+28.75))
        Arc(radius: 120, centerY: -172+31.5+28.75, .clockwise)
        Arc(radius: 35, centerY: -172+31.5+28.75-19.5, .clockwise)
        Fillet(radius: 7)
        Line(from: (0, -172+31.5), Angle(dx: -2.75, dy: -1))
        Fillet(radius: 40)
        Line(Angle(dx: -14, dy: -1), to: (-75, -172+11.5))
        Fillet(radius: 4)
        Line(to: (-75, -172))
        Fillet(radius: 2)
        Line(to: (75, -172))
        Fillet(radius: 2)
        Line(to: (75, -172+11.5))
        Fillet(radius: 4)
        Line(from: (70, -172+11.5), Angle(dx: -14, dy: 1))
        Fillet(radius: 40)
        Line(Angle(dx: -2.75, dy: 1), to: (0, -172+31.5))
        Fillet(radius: 7)
        Arc(radius: 35, centerY: -172+31.5+28.75-19.5, .clockwise)
        Arc(radius: 120, centerY: -172+31.5+28.75, .clockwise)
        Line(from: (8.25, -172+31.5+28.75), to: (8.25, -172+31.5+28.75+32))
        Arc(radius: 120, centerY: -172+31.5+28.75+32, .clockwise)
        Arc(radius: 35, centerY: -172+31.5+28.75+32+19.5, .clockwise)
        Fillet(radius: 7)
        Line(from: (0.0, -51), Angle(dx: 2.75, dy: 1))
        Fillet(radius: 3)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1.0, dy: 20), .counterclockwise)
        Arc(radius: 80, fromX: 52.053/2.0, .counterclockwise)
        Arc(radius: 300, center: (0, -300), fromX: 20.456/2.0, to: (0, 0), .counterclockwise)
    }
}
