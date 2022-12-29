//
//  P55E1.swift
//  
//
//  Created by André Rohrbeck on 22.10.22.
//

import Foundation

internal struct P55E1: RailProfile {
    public var description: String {
        "EN 13674-1 – 55E1"
    }



    public var legacyDescription: String? {
        "U55"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -27.946/2.0, .counterclockwise)
        Arc(radius: 60, toX: -40.588/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -20))
        Line()
        Fillet(radius: 2)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -53))
        Fillet(radius: 12)
        Line(from: (-9.5, -53), to: (-9.5, -155+31))
        Fillet(radius: 12)
        Line(from: (0, -155+31), Angle(dx: -3, dy: -1))
        Fillet(radius: 23)
        Line(Angle(dx: -10, dy: -1), to: (-67, -155+14))
        Fillet(radius: 3)
        Line(to: (-67, -155))
        Fillet(radius: 2)
        Line(to: (67, -155))
        Fillet(radius: 2)
        Line(to: (67, -155+14))
        Fillet(radius: 3)
        Line(from: (67, -155+14), Angle(dx: -10, dy: 1))
        Fillet(radius: 23)
        Line(Angle(dx: -3, dy: 1), to: (0, -155+31))
        Fillet(radius: 12)
        Line(from: (9.5, -155+31), to: (9.5, -53))
        Fillet(radius: 12)
        Line(from: (0.0, -53), Angle(dx: 3, dy: 1))
        Fillet(radius: 2)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1.0, dy: 20), .counterclockwise)
        Arc(radius: 60, fromX: 40.588/2.0, .counterclockwise)
        Arc(center: (0, -200), fromX: 27.946/2.0, to: (0, 0), .counterclockwise)
    }
}
