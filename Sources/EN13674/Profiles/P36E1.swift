//
//  P36E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The XXX rail profile according to appendix A, picture A.6 of EN 13674-4:2020.
internal struct P36E1: RailProfile {
    public var description: String {
        "EN 13674-4 – 36E1"
    }



    public var legacyDescription: String? {
        "36 UNI"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -35.844/2.0, .counterclockwise)
        Arc(radius: 29, toX: -39.779 / 2.0, .counterclockwise)
        Arc(radius: 12, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 3.0)
        Line(Angle(dx: 2, dy: -1), to: (0, -44))
        Fillet(radius: 9)
        Line(from: (-7, -44), to: (-7, -130 + 28))
        Fillet(radius: 9.0)
        Line(from: (0, -130+28), Angle(dx: -2, dy: -1))
        Fillet(radius: 8.0)
        Line(Angle(dx: -5.56, dy: -1), to: (-50, -130+9))
        Fillet(radius: 6.0)
        Line(from: (-50.0, -130+9), to: (-50, -130))
        Line(to: (50, -130))
        Line(to: (50, -130+9))
        Fillet(radius: 6.0)
        Line(from: (50, -130+9), Angle(dx: -5.56, dy: 1))
        Fillet(radius: 8.0)
        Line(Angle(dx: -2, dy: 1), to: (0, -130+28))
        Fillet(radius: 9.0)
        Line(from: (7, -130+28), to: (7, -44))
        Fillet(radius: 9.0)
        Line(from: (0, -44), Angle(dx: 2, dy: 1))
        Fillet(radius: 3.0)
        Line()
        Arc(radius: 12, fromHeading: Angle(degrees: 90), .counterclockwise)
        Arc(radius: 29, fromX: 39.779/2.0, .counterclockwise)
        Arc(center: (0, -200), fromX: 35.844/2.0, to: (0, 0), .counterclockwise)
    }
}
