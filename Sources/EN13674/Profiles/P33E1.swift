//
//  P33E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The P33E1 rail profile according to appendix A, picture A.4 of EN 13674-4:2020.
internal struct P33E1: RailProfile {
    public var description: String {
        "EN 13674-4 – 33E1"
    }



    public var legacyDescription: String? {
        "S 33"
    }



    internal static var profile = Path {
        Arc(center: (0, -225), from: (0, 0), toX: -31.991/2.0, .counterclockwise)
        Arc(radius: 14, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 2.0)
        Line(Angle(dx: 4, dy: -1), to: (0, -39))
        Fillet(radius: 6)
        Arc(radius: 100.0, centerY: -134 + 47 + 30, .clockwise)
        Line(from: (-5.5, -134+47+30), to: (-5.5, -134.0 + 47 ))
        Arc(radius: 160.0, centerY: -134+47, .clockwise)
        Fillet(radius: 6.0)
        Line(from: (0, -134+19), Angle(dx: -4, dy: -1))
        Fillet(radius: 10.0)
        Line(Angle(dx: -13.67, dy: -1), to: (-52.5, -134+9.5))
        Fillet(radius: 3.0)
        Line(from: (-52.5, -134+9.5), to: (-52.5, -134))
        Fillet(radius: 2.0)
        Line(from: (-52.5, -134), to: (52.5, -134))
        Fillet(radius: 2.0)
        Line(from: (52.5, -134), to: (52.5, -134+9.5))
        Fillet(radius: 3.0)
        Line(from: (52.5, -134+9.5), Angle(dx: -13.67, dy: 1) )
        Fillet(radius: 10.0)
        Line(Angle(dx: -4, dy: 1), to: (0, -134+19))
        Fillet(radius: 6)
        Arc(radius: 160, centerY: -134+47, .clockwise)
        Line(from: (5.5, -134+47), to: (5.5, -134+47+30))
        Arc(radius: 100, centerY: -134+47+30, .clockwise)
        Fillet(radius: 6.0)
        Line(from: (0, -39), Angle(dx: 4, dy: 1))
        Fillet(radius: 2.0)
        Line()
        Arc(radius: 14, fromHeading: Angle(degrees: 90), .counterclockwise)
        Arc(center: (0, -225), fromX: 31.991/2.0, to: (0, 0), .counterclockwise)
    }
}
