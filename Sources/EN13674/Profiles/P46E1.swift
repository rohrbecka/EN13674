//
//  P46E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The 46E1 rail profile according to appendix A, picture A.1 of EN 13674-1:2017.
internal struct P46E1: RailProfile {
    public var description: String {
        "EN 13674 - 46E1"
    }



    public var legacyDescription: String? {
        "SBB I"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -18.881/2.0, .counterclockwise)
        Arc(radius: 80, toX: -43.881 / 2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 1.0)
        Line(Angle(dx: 4, dy: -1), to: (0, -45))
        Fillet(radius: 6)
        Arc(radius: 30.0, centerY: -145 + 62.5 + 26.95, .clockwise)
        Line(from: (-8, -45), to: (-7, -145.0 + 62.5 + 15.0))
        Line(to: (-7, -145.0 + 62.5 - 15.0 ))
        Line(to: (-9, -120))
        Arc(radius: 30.0, centerY: -145+62.5-26.7, .clockwise)
        Fillet(radius: 6.0)
        Line(from: (0, -120), to: (-62.5, -120 - 62.5/4))
        Fillet(radius: 2.0)
        Line(from: (-62.5, -120), to: (-62.5, -145))
        Fillet(radius: 1.0)
        Line(from: (-62.5, -145), to: (62.5, -145))
        Fillet(radius: 1.0)
        Line(from: (62.5, -145), to: (62.5, -120))
        Fillet(radius: 2.0)
        Line(from: (62.5, -120 - 62.5/4), to: (0, -120) )
        Fillet(radius: 6.0)
        Arc(radius: 30.0, centerY: -145+62.5-26.7, .clockwise)
        Line(from: (9, -120), to: (7, -145.0 + 62.5 - 15.0))
        Line(to: (7, -145+62.5+15.0))
        Line(to: (8, -45))
        Arc(radius: 30, centerY: -145+62.5+26.95, .clockwise)
        Fillet(radius: 6.0)
        Line(from: (0, -45), Angle(dx: 4, dy: 1))
        Fillet(radius: 1.0)
        Line()
        Arc(radius: 13, fromHeading: Angle(degrees: 90), .counterclockwise)
        Arc(radius: 80, fromX: 43.881/2.0, .counterclockwise)
        Arc(radius: 300, center: (0, -300), fromX: 18.881/2.0, to: (0, 0), .counterclockwise)
    }
}
