//
//  P27E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation
import ProfilePath

/// The 27E1 rail profile according to appendix A, picture A.1 of EN 13674-4:2020.
internal struct P27E1: RailProfile {
    public var description: String {
        "EN 13674-4 – 27E1"
    }



    public var legacyDescription: String? {
        "27 UNI"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -27.666/2.0, .counterclockwise)
        Arc(radius: 12, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 2.0)
        Line(Angle(dx: 3, dy: -1), to: (0, -35))
        Fillet(radius: 8)
        Line(from: (-6.5, -35), to: (-5.5, -120.0 + 67))
        Line(to: (-5.5, -120.0 + 37 ))
        Line(to: (-7.5, -120 + 19))
        Fillet(radius: 8.0)
        Line(from: (0, -120 + 19), Angle(dx: -3, dy: -1) )
        Fillet(radius: 8.0)
        Line(Angle(dx: -8.33, dy: -1), to: (-47.5, -120+8) )
        Fillet(radius: 4.0)
        Line(from: (-47.5, -120+8), to: (-47.5, -120))
        Line(to: (47.5, -120))
        Line(to: (47.5, -120+8))
        Fillet(radius: 4.0)
        Line(from: (47.5, -120+8), Angle(dx: -8.33, dy: 1))
        Fillet(radius: 8.0)
        Line(Angle(dx: -3, dy: 1), to: (0, -120+19) )
        Fillet(radius: 8.0)
        Line(from: (7.5, -120+19), to: (5.5, -120.0+37))
        Line(to: (5.5, -120+37+30))
        Line(to: (6.5, -35))
        Fillet(radius: 8.0)
        Line(from: (0, -35), Angle(dx: 3, dy: 1))
        Fillet(radius: 2.0)
        Line()
        Arc(radius: 12, fromHeading: Angle(degrees: 90), .counterclockwise)
        Arc(center: (0, -200), fromX: 27.666/2.0, to: (0, 0), .counterclockwise)
    }
}
