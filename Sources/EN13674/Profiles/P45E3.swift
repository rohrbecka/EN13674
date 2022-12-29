//
//  P45E3.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The 45E3 rail profile according to appendix A, picture A.15 of EN 13674-4:2020.
internal struct P45E3: RailProfile {
    public var description: String {
        "EN 13674-4 – 45E3"
    }



    public var legacyDescription: String? {
        "RN45"
    }



    internal static var profile = Path {
        Arc(center: (0, -305), from: (0, 0), toX: -51.347/2.0, .counterclockwise)
        Arc(radius: 8, .counterclockwise, toHeading: Angle(degrees: 270))
        Line()
        Fillet(radius: 2.0)
        Line(Angle(dx: 4, dy: -1), to: (0, -40.5))
        Fillet(radius: 6)
        Arc(radius: 305.0, center: (-305-15.0/2, -142 + 62.5), .clockwise)
        Fillet(radius: 6.0)
        Line(from: (0, -142+23.5), Angle(dx: -4, dy: -1))
        Fillet(radius: 2.0)
        Line(from: (-65, -130), to: (-65, -142))
        Fillet(radius: 2)
        Line(from: (-65, -142), to: (65, -142))
        Fillet(radius: 2)
        Line(from: (65, -142), to: (65, -130))
        Fillet(radius: 2.0)
        Line(Angle(dx: -4, dy: 1), to: (0, -142+23.5))
        Fillet(radius: 6.0)
        Arc(radius: 305, center: (305+15.0/2, -142+62.5), .clockwise)
        Fillet(radius: 6.0)
        Line(from: (0, -40.5), Angle(dx: 4, dy: 1))
        Fillet(radius: 2.0)
        Line()
        Arc(radius: 8, fromHeading: Angle(degrees: 90.0), .counterclockwise)
        Arc(center: (0, -305), fromX: 51.347/2.0, to: (0, 0), .counterclockwise)
    }
}
