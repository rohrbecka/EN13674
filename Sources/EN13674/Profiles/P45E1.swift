//
//  P45E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The 45E1 rail profile according to appendix A, picture A.13 of EN 13674-4:2020.
internal struct P45E1: RailProfile {
    public var description: String {
        "EN 13674-4 – 45E1"
    }



    public var legacyDescription: String? {
        "BS 90A"
    }



    internal static var profile = Path {
        Arc(center: (0, -307), from: (0, 0), toX: -43.084/2.0, .counterclockwise)
        Arc(radius: 12.7, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 1.6)
        Line(Angle(dx: 2.75, dy: -1), to: (0, -46.04))
        Fillet(radius: 8)
        Arc(radius: 22.22, centerY: -142.88+71.44+17.46, .clockwise)
        Arc(radius: 508, center: (-508-13.89/2, -142.88+71.44), .clockwise)
        Fillet(radius: 13.0)
        Line(from: (0, -142.88+26.19), Angle(dx: -2.75, dy: -1))
        Fillet(radius: 16.0)
        Line(Angle(dx: -8, dy: -1), to: (-63.5, -142.88+9.13))
        Fillet(radius: 3.2)
        Line(from: (-63.5, -142.88+9.13), to: (-63.5, -142.88))
        Fillet(radius: 1.6)
        Line(from: (-63.5, -142.88), to: (63.5, -142.88))
        Fillet(radius: 1.6)
        Line(from: (63.5, -142.88), to: (63.5, -142.88+9.13))
        Fillet(radius: 3.2)
        Line(from: (63.5, -142.88+9.13), Angle(dx: -8, dy: 1))
        Fillet(radius: 16.0)
        Line(Angle(dx: -2.75, dy: 1), to: (0, -142.88+26.19))
        Fillet(radius: 13.0)
        Arc(radius: 508, center: (508+13.89/2, -142.88+71.44), .clockwise)
        Arc(radius: 22.22, centerY: -142.88+71.44+17.46, .clockwise)
        Fillet(radius: 8.0)
        Line(from: (0, -46.04), Angle(dx: 2.75, dy: 1))
        Fillet(radius: 1.6)
        Line()
        Arc(radius: 12.7, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(center: (0, -307), fromX: 43.084/2.0, to: (0, 0), .counterclockwise)
    }
}
