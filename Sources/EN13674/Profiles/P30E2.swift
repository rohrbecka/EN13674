//
//  P30E2.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation
import ProfilePath

/// The 30E2 rail profile according to appendix A, picture A.3 of EN 13674-4:2020.
internal struct P30E2: RailProfile {
    public var description: String {
        "EN 13674-4 – 30E2"
    }



    public var legacyDescription: String? {
        "BS 60A"
    }



    internal static var profile = Path {
        Arc(center: (0, -305), from: (0, 0), toX: -39.401/2.0, .counterclockwise)
        Arc(radius: 9.5, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 1.6)
        Line(Angle(dx: 2.75, dy: -1), to: (0, -35.72))
        Fillet(radius: 8)
        Arc(radius: 22.22, centerY: -114.3 + 56.36 + 13.49, .clockwise)
        Arc(radius: 508, center: (-508-11.11/2, -114.3+56.36), .clockwise)
        Fillet(radius: 9.5)
        Line(from: (0, -114.3+22.22), Angle(dx: -2.75, dy: -1))
        Fillet(radius: 13)
        Line(Angle(dx: -6, dy: -1), to: (-109.54/2.0, -114.3+7.54))
        Fillet(radius: 4.0)
        Line(from: (-109.54/2, -114.3+7.54), to: (-109.54/2, -114.3))
        Fillet(radius: 1.6)
        Line(from: (-109.54/2, -114.3), to: (109.54/2, -114.3))
        Fillet(radius: 1.6)
        Line(from: (109.54/2, -114.3), to: (109.54/2, -114.3+7.54))
        Fillet(radius: 4.0)
        Line(from: (109.54/2, -114.3+7.54), Angle(dx: -6, dy: 1))
        Fillet(radius: 13.0)
        Line(Angle(dx: -2.75, dy: 1), to: (0, -114.3+22.22))
        Fillet(radius: 9.5)
        Arc(radius: 508, center: (508.0+11.11/2.0, -114.3+56.36), .clockwise)
        Arc(radius: 22.22, centerY: -114.3 + 56.36 + 13.49, .clockwise)
        Fillet(radius: 8.0)
        Line(from: (0, -35.72), Angle(dx: 2.75, dy: 1))
        Fillet(radius: 1.6)
        Line()
        Arc(radius: 9.5, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(center: (0, -305), fromX: 39.401/2.0, to: (0, 0), .counterclockwise)
    }
}
