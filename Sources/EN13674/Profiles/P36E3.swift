//
//  P36E3.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The 36E3 rail profile according to appendix A, picture A.8 of EN 13674-4:2020.
internal struct P36E3: RailProfile {
    public var description: String {
        "EN 13674-4 – 36E3"
    }



    public var legacyDescription: String? {
        "VST 36"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -36.401/2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 2.0)
        Line(Angle(dx: 3, dy: -1), to: (0, -43))
        Fillet(radius: 10.0)
        Arc(radius: 80.0, centerY: -130 + 36 + 38, .clockwise)
        Line(from: (-6, -130+36+38), to: (-6, -130+36))
        Arc(radius: 80.0, centerY: -130+36, .clockwise)
        Fillet(radius: 10.0)
        Line(from: (0, -130+23), Angle(dx: -3, dy: -1))
        Fillet(radius: 8)
        Line(Angle(dx: -8, dy: -1), to: (-50, -130+9.75))
        Fillet(radius: 4.0)
        Line(from: (-50.0, -120), to: (-50.0, -130))
        Fillet(radius: 1.0)
        Line(from: (-50, -130), to: (50, -130))
        Fillet(radius: 1.0)
        Line(from: (50.0, -130), to: (50, -120))
        Fillet(radius: 4.0)
        Line(from: (50, -130+9.75), Angle(dx: -8, dy: 1))
        Fillet(radius: 8)
        Line(Angle(dx: -3, dy: 1), to: (0, -130+23) )
        Fillet(radius: 10.0)
        Arc(radius: 80, centerY: -130+36, .clockwise)
        Line(from: (6, -130+36), to: (6, -130+36+38))
        Arc(radius: 80, centerY: -130+36+38, .clockwise)
        Fillet(radius: 10.0)
        Line(from: (0, -43), Angle(dx: 3, dy: 1))
        Fillet(radius: 2.0)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(center: (0, -200), fromX: 36.401/2.0, to: (0, 0), .counterclockwise)
    }
}
