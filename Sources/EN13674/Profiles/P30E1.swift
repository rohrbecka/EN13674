//
//  P30E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The P30E1 rail profile according to appendix A, picture A.2 of EN 13674-4:2020.
internal struct P30E1: RailProfile {
    public var description: String {
        "EN 13674-4 - P30E1"
    }



    public var legacyDescription: String? {
        "S 30"
    }



    internal static var profile = Path {
        Arc(center: (0, -305), from: (0, 0), toX: -45.493/2.0, .counterclockwise)
        Arc(radius: 8, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 1.6)
        Line(Angle(dx: 4.33, dy: -1), to: (0, -31))
        Fillet(radius: 6.4)
        Arc(radius: 305, center: (-305-6.15, -108+48.25), .clockwise)
        Fillet(radius: 6.4)
        Line(from: (0, -108+19.5), Angle(dx: -4.33, dy: -1))
        Fillet(radius: 1.6)
        Line(from: (-54, -108+10), to: (-54, -108))
        Fillet(radius: 1.6)
        Line(from: (-54, -108), to: (54, -108))
        Fillet(radius: 1.6)
        Line(from: (54, -108), to: (54, -108+10))
        Fillet(radius: 1.6)
        Line(Angle(dx: -4.33, dy: 1), to: (0, -108+19.5))
        Fillet(radius: 6.4)
        Arc(radius: 305, center: (305+6.15, -108+48.25), .clockwise)
        Fillet(radius: 6.4)
        Line(from: (0, -31), Angle(dx: 4.33, dy: 1))
        Fillet(radius: 1.6)
        Line()
        Arc(radius: 8, fromHeading: Angle(degrees: 90), .counterclockwise)
        Arc(center: (0, -305), fromX: 45.493/2.0, to: (0, 0), .counterclockwise)
    }
}
