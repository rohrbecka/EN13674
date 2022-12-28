//
//  P39E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The 39E1 rail profile according to appendix A, picture A.9 of EN 13674-4:2020.
internal struct P39E1: RailProfile {
    public var description: String {
        "EN 13674-4 - 39E1"
    }



    public var legacyDescription: String? {
        "BS 80A"
    }



    internal static var profile = Path {
        Arc(center: (0, -305), from: (0, 0), toX: -42.889/2.0, .counterclockwise)
        Arc(radius: 11.1, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 1.6)
        Line(Angle(dx: 2.75, dy: -1), to: (0, -45))
        Fillet(radius: 8)
        Arc(radius: 22.22, centerY: -133.35+25+41.67+16.27, .clockwise)
        Arc(radius: 508, center: (-508-13.1/2, -133.35+25+41.67), .clockwise)
        Fillet(radius: 13)
        Line(from: (0, -133.35+25), Angle(dx: -2.75, dy: -1))
        Fillet(radius: 16)
        Line(Angle(dx: -7.8, dy: -1), to: (-117.47/2, -133.35+8.73))
        Fillet(radius: 3.2)
        Line(from: (-117.47/2.0, -133.35+8.73), to: (-117.47/2.0, -133.35))
        Fillet(radius: 1.6)
        Line(from: (-117.47/2.0, -133.35), to: (117.47/2.0, -133.35))
        Fillet(radius: 1.6)
        Line(from: (117.47/2.0, -133.35), to: (117.47/2.0, -133.35 + 8.73))
        Fillet(radius: 3.2)
        Line(from: (117.47/2.0, -133.35 + 8.73), Angle(dx: -7.8, dy: 1))
        Fillet(radius: 16.0)
        Line(Angle(dx: -2.75, dy: 1), to: (0, -133.35+25))
        Fillet(radius: 13)
        Arc(radius: 508.0, center: (508+13.1/2, -133.35+25+41.67), .clockwise)
        Arc(radius: 22.22, centerY: -133.35+25+41.67+16.27, .clockwise)
        Fillet(radius: 8)
        Line(from: (0, -42.47), Angle(dx: 2.75, dy: 1))
        Fillet(radius: 1.6)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(center: (0, -305), fromX: 42.889/2.0, to: (0, 0), .counterclockwise)
    }
}
