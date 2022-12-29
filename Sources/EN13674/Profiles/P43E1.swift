//
//  P43E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation
import ProfilePath

/// The 43E1 rail profile according to appendix A, picture A.12 of EN 13674-4:2020.
internal struct P43E1: RailProfile {
    public var description: String {
        "EN 13674-4 – 43E1"
    }



    public var legacyDescription: String? {
        "K43S"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -19.258/2.0, .counterclockwise)
        Arc(radius: 80, toX: -49.797 / 2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 4.0)
        Line(Angle(dx: 3, dy: -1), to: (0, -44.3))
        Fillet(radius: 7)
        Line(from: (-7.1, -44.3), to: (-7.1, -140.3+25))
        Fillet(radius: 7.0)
        Line(from: (0, -140.3+25), Angle(dx: -3, dy: -1))
        Line(Angle(dx: -8.83, dy: -1), to: (-62.5, -140.3+10))
        Fillet(radius: 4.0)
        Line(from: (-62.5, -140.3+10), to: (-62.5, -140.3))
        Fillet(radius: 2.0)
        Line(from: (-62.5, -140.3), to: (62.5, -140.3))
        Fillet(radius: 2.0)
        Line(from: (62.5, -140.3), to: (62.5, -140.3+10))
        Fillet(radius: 4.0)
        Line(from: (62.5, -140.3+10), Angle(dx: -8.83, dy: 1))
        Line(Angle(dx: -3, dy: 1), to: (0, -140.3+25))
        Fillet(radius: 7.0)
        Line(from: (7.1, -140.3+25), to: (7.1, -44.3))
        Fillet(radius: 7.0)
        Line(from: (0, -44.3), Angle(dx: 3, dy: 1))
        Fillet(radius: 4.0)
        Line()
        Arc(radius: 13, fromHeading: Angle(degrees: 90), .counterclockwise)
        Arc(radius: 80, fromX: 49.797/2.0, .counterclockwise)
        Arc(center: (0, -300), fromX: 19.258/2.0, to: (0, 0), .counterclockwise)
    }
}
