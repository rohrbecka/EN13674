//
//  P41E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The P41E1 rail profile according to appendix A, picture A.11 of EN 13674-4:2020.
internal struct P41E1: RailProfile {
    public var description: String {
        "EN 13674-4 – 41E1"
    }



    public var legacyDescription: String? {
        "S41 R10"
    }



    internal static var profile = Path {
        Arc(center: (0, -400), from: (0, 0), toX: -48.205/2.0, .counterclockwise)
        Arc(radius: 10, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 2.0)
        Line(Angle(dx: 3, dy: -1), to: (0, -43))
        Fillet(radius: 7)
        Arc(radius: 100.0, centerY: -138+48.5+30, .clockwise)
        Line(from: (-6, -138+48.5+30), to: (-6, -138+48.5))
        Arc(radius: 140.0, centerY: -138+48.5, .clockwise)
        Fillet(radius: 7.0)
        Line(from: (0, -138+24), Angle(dx: -3, dy: -1))
        Fillet(radius: 40.0)
        Line(Angle(dx: -11.32, dy: -1), to: (-62.5, -138+9.48))
        Fillet(radius: 3.0)
        Line(from: (-62.5, -138+9.48), to: (-62.5, -138))
        Fillet(radius: 1.5)
        Line(from: (-62.5, -138), to: (62.5, -138))
        Fillet(radius: 1.5)
        Line(from: (62.5, -138), to: (62.5, -138+9.48))
        Fillet(radius: 3)
        Line(from: (62.5, -138+9.48), Angle(dx: -11.32, dy: 1))
        Fillet(radius: 40.0)
        Line(Angle(dx: -3, dy: 1), to: (0, -138+24))
        Fillet(radius: 7.0)
        Arc(radius: 140, centerY: -138+48.5, .clockwise)
        Line(from: (6, -138+48.5), to: (6, -138 + 48.5+30))
        Arc(radius: 100, centerY: -138+48.5+30, .clockwise)
        Fillet(radius: 7.0)
        Line(from: (0, -43), Angle(dx: 3, dy: 1))
        Fillet(radius: 2.0)
        Line()
        Arc(radius: 10, fromHeading: Angle(degrees: 90), .counterclockwise)
        Arc(center: (0, -400), fromX: 48.205/2.0, to: (0, 0), .counterclockwise)
    }
}
