//
//  P35E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The P35E1 rail profile according to appendix A, picture A.5 of EN 13674-4:2020.
internal struct P35E1: RailProfile {
    public var description: String {
        "EN 13674-4 - 35E1"
    }



    public var legacyDescription: String? {
        "Xa"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -40.0/2.0, .counterclockwise)
        Arc(radius: 10, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 4.0)
        Line(Angle(dx: 2.5, dy: -1), to: (0, -44))
        Fillet(radius: 5)
        Line(from: (-7, -44), to: (-6, -125.0 + 43 + 20))
        Line(to: (-6, -125 + 43))
        Line(to: (-7, -100))
        Fillet(radius: 5.0)
        Line(from: (0, -100), Angle(dx: -2.5, dy: -1))
        Fillet(radius: 10.0)
        Line(Angle(dx: -5, dy: -1), to: (-55, 8))
        Fillet(radius: 4.0)
        Line(from: (-55.0, -125+8), to: (-55, -125))
        Line(to: (55.0, -125))
        Line(to: (55.0, -125+8))
        Fillet(radius: 4)
        Line(from: (55.0, -125+8), Angle(dx: -5, dy: 1))
        Fillet(radius: 10)
        Line(Angle(dx: -2.5, dy: 1), to: (0, -100) )
        Fillet(radius: 5.0)
        Line(from: (7, -100), to: (6, -125.0 + 43))
        Line(to: (6, -125+43+20))
        Line(to: (7, -44))
        Fillet(radius: 5.0)
        Line(from: (0, -44), Angle(dx: 2.5, dy: 1))
        Fillet(radius: 4.0)
        Line()
        Arc(radius: 10, fromHeading: Angle(degrees: 90), .counterclockwise)
        Arc(center: (0, -200), fromX: 40.0/2.0, to: (0, 0), .counterclockwise)
    }
}
