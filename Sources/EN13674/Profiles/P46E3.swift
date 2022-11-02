//
//  P46E3.swift
//  
//
//  Created by André Rohrbeck on 11.10.22.
//

import Foundation

internal struct P46E3: RailProfile {
    public var description: String {
        "EN 13674 – 46E3"
    }



    public var legacyDescription: String? {
        "NP 46"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -23.015/2.0, .counterclockwise)
        Arc(radius: 80, toX: -53.761/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -16.5))
        Line()
        Fillet(radius: 1.5)
        Line(Angle(dx: 4, dy: -1), to: (0.0, -42.5))
        Fillet(radius: 6)
        Arc(radius: 80, centerY: -62, .clockwise)
        Line(from: (-7, -62), to: (-7, -92))
        Arc(radius: 120, centerY: -92, .clockwise)
        Fillet(radius: 6)
        Line(from: (0, -142+25), Angle(dx: -4, dy: -1))
        Fillet(radius: 3)
        Line(from: (-60, -122), to: (-60, -142))
        Fillet(radius: 1)
        Line(to: (60, -142))
        Fillet(radius: 1)
        Line(from: (60, -142), to: (60, -122))
        Fillet(radius: 3)
        Line(Angle(dx: -4, dy: 1), to: (0, -142+25))
        Fillet(radius: 6)
        Arc(radius: 120, centerY: -92, .clockwise)
        Line(from: (7, -92), to: (7, -62.0))
        Arc(radius: 80, centerY: -62, .clockwise)
        Fillet(radius: 6)
        Line(from: (0, -42.5), Angle(dx: 4, dy: 1))
        Fillet(radius: 1.5)
        Line(Angle(dx: -1, dy: 16.5))
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 16.5), .counterclockwise)
        Arc(radius: 80, fromX: 53.761/2.0, .counterclockwise)
        Arc(center: (0, -300), fromX: 23.015/2.0, to: (0, 0), .counterclockwise)
    }
}
