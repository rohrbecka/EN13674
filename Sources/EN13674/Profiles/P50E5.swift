//
//  P50E5.swift
//  
//
//  Created by André Rohrbeck on 15.10.22.
//

import Foundation

internal struct P50E5: RailProfile {
    public var description: String {
        "EN 13674 – 50E5"
    }



    public var legacyDescription: String? {
        "50 UNI"
    }



    internal static var profile = Path {
        Arc(center: (0, -400), from: (0, 0), toX: -40.471/2.0, .counterclockwise)
        Arc(radius: 14, .counterclockwise, toHeading: Angle(dx: -1, dy: -16))
        Line()
        Fillet(radius: 2)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -50.5))
        Fillet(radius: 7)
        Arc(radius: 80, centerY: -148+82, .clockwise)
        Line(from: (-7, -148+82), to: (-7, -148+52))
        Arc(radius: 120, centerY: -148+52, .clockwise)
        Fillet(radius: 7)
        Line(from: (0, -148+27.5), Angle(dx: -3, dy: -1))
        Fillet(radius: 40)
        Line(Angle(dx: -8, dy: -1), to: (-67.5, -138))
        Fillet(radius: 3)
        Line(to: (-67.5, -148))
        Fillet(radius: 2)
        Line(to: (67.5, -148))
        Fillet(radius: 2)
        Line(to: (67.5, -138))
        Fillet(radius: 3)
        Line(from: (67.5, -138), Angle(dx: -8, dy: 1))
        Fillet(radius: 40)
        Line(Angle(dx: -3, dy: 1), to: (0, -148+27.5))
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
