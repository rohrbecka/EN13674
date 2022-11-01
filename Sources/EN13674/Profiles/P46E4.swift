//
//  P46E4.swift
//  
//
//  Created by André Rohrbeck on 12.10.22.
//

import Foundation

internal struct P46E4: RailProfile {
    public var description: String {
        "EN 13674 – 46E4"
    }



    public var legacyDescription: String? {
        "46 UNI"
    }



    internal static var profile = Path {
        Arc(center: (0, -400), from: (0, 0), toX: -38.378/2.0, .counterclockwise)
        Arc(radius: 14, .counterclockwise, toHeading: Angle(dx: -1, dy: -20.0))
        Line()
        Fillet(radius: 1)
        Line(Angle(dx: 4, dy: -1), to: (0.0, -45))
        Fillet(radius: 5)
        Line(from: (-8, -45), to: (-7, -67.5))
        Line(to: (-7, -97.5))
        Line(to: (-9, -120))
        Fillet(radius: 5)
        Line(from: (0, -120), Angle(dx: -4, dy: -1))
        Fillet(radius: 2)
        Line(from: (-67.5, -125), to: (-67.5, -145))
        Fillet(radius: 1)
        Line(to: (67.5, -145))
        Fillet(radius: 1)
        Line(to: (67.5, -125))
        Fillet(radius: 2)
        Line(Angle(dx: -4, dy: 1), to: (0, -120))
        Fillet(radius: 5)
        Line(from: (9, -120), to: (7, -97.5))
        Line(to: (7, -67.5))
        Line(to: (8, -45))
        Fillet(radius: 5)
        Line(from: (0, -45), Angle(dx: 4, dy: 1))
        Fillet(radius: 1)
        Line(Angle(dx: -1, dy: 20))
        Arc(radius: 14, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(radius: 400, center: (0, -400), fromX: 38.378/2.0, to: (0, 0), .counterclockwise)
    }
}
