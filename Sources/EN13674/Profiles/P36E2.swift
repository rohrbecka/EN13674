//
//  P36E2.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The 36E2 rail profile according to appendix A, picture A.7 of EN 13674-4:2020.
internal struct P36E2: RailProfile {
    public var description: String {
        "EN 13674-4 - 36E2"
    }



    public var legacyDescription: String? {
        "36 kg (S-40)"
    }



    internal static var profile = Path {
        Arc(center: (0, -200), from: (0, 0), toX: -23.912/2.0, .counterclockwise)
        Arc(radius: 60, toX: -36.607 / 2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 2.0)
        Line(Angle(dx: 3, dy: -1), to: (0, -40.5))
        Fillet(radius: 7)
        Line(from: (-6.5, -40.5), to: (-6.5, -128.0 + 24.5))
        Fillet(radius: 7.0)
        Line(from: (0, -128+24.5), Angle(dx: -3, dy: -1))
        Fillet(radius: 28)
        Line(Angle(dx: -10, dy: -1), to: (-57.5, -118))
        Fillet(radius: 2.0)
        Line(from: (-57.5, -118), to: (-57.5, -128))
        Fillet(radius: 2.0)
        Line(from: (-57.5, -128), to: (57.5, -128))
        Fillet(radius: 2.0)
        Line(from: (57.5, -128), to: (57.5, -118))
        Fillet(radius: 2.0)
        Line(from: (57.5, -118), Angle(dx: -10, dy: 1) )
        Fillet(radius: 28)
        Line(Angle(dx: -3, dy: 1), to: (0, -128+24.5))
        Fillet(radius: 7.0)
        Line(from: (6.5, -120+24.5), to: (6.5, -40.5))
        Fillet(radius: 7.0)
        Line(from: (0, -40.5), Angle(dx: 3, dy: 1))
        Fillet(radius: 2.0)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(radius: 60, fromX: 36.607/2.0, .counterclockwise)
        Arc(center: (0, -200), fromX: 23.912/2.0, to: (0, 0), .counterclockwise)
    }
}
