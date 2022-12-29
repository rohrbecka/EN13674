//
//  P46E2.swift
//  
//
//  Created by André Rohrbeck on 07.10.22.
//

import Foundation

internal struct P46E2: RailProfile {
    public var description: String {
        "EN 13674-1 – 46E2"
    }



    public var legacyDescription: String? {
        "U33"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -27.946/2.0, .counterclockwise)
        Arc(radius: 60, toX: -40.588/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 2.0)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -47.0))
        Fillet(radius: 7)
        Line(from: (-7.5, -47), to: (-7.5, -145.0+27.0))
        Fillet(radius: 7)
        Line(from: (0, -145+27), Angle(dx: -3, dy: -1))
        Fillet(radius: 20)
        Line(Angle(dx: -10, dy: -1), to: (-67, -145+10.5))
        Fillet(radius: 3)
        Line(to: (-67, -145))
        Fillet(radius: 2)
        Line(to: (67, -145))
        Fillet(radius: 2)
        Line(to: (67, -145+10.5))
        Fillet(radius: 3)
        Line(from: (67, -145+10.5), Angle(dx: -10, dy: 1))
        Fillet(radius: 20)
        Line(Angle(dx: -3, dy: 1), to: (0, -145+27))
        Fillet(radius: 7)
        Line(from: (7.5, -145.0+27.0), to: (7.5, -47.0))
        Fillet(radius: 7)
        Line(from: (0, -47.0), Angle(dx: 3, dy: 1))
        Fillet(radius: 2)
        Line(Angle(dx: -1, dy: 20))
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(radius: 60, fromX: 40.588/2.0, .counterclockwise)
        Arc(center: (0, -200), fromX: 27.946/2.0, to: (0, 0), .counterclockwise)
    }
}
