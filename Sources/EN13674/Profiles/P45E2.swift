//
//  P45E2.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The 45E2 rail profile according to appendix A, picture A.14 of EN 13674-4:2020.
internal struct P45E2: RailProfile {
    public var description: String {
        "EN 13674-4 – 45E2"
    }



    public var legacyDescription: String? {
        "DSB 45"
    }



    internal static var profile = Path {
        Arc(center: (0, -300), from: (0, 0), toX: -20.060/2.0, .counterclockwise)
        Arc(radius: 80, toX: -48.886 / 2.0, .counterclockwise)
        Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
        Line()
        Fillet(radius: 2.0)
        Line(Angle(dx: 4, dy: -1), to: (0, -43))
        Fillet(radius: 7)
        Arc(radius: 400.0, center: (-400-13.76/2, -141 + 75.83), .clockwise)
        Fillet(radius: 6.0)
        Line(from: (0, -141+24), Angle(dx: -4, dy: -1))
        Fillet(radius: 3.0)
        Line(from: (-63, -130), to: (-63, -141))
        Fillet(radius: 1.5)
        Line(from: (-63, -141), to: (63, -141))
        Fillet(radius: 1.5)
        Line(from: (63, -141), to: (63, -130))
        Fillet(radius: 3.0)
        Line(Angle(dx: -4, dy: 1), to: (0, -141+24) )
        Fillet(radius: 6.0)
        Arc(radius: 400.0, center: (400+13.76/2, -141+75.83), .clockwise)
        Fillet(radius: 7.0)
        Line(from: (0, -43), Angle(dx: 4, dy: 1))
        Fillet(radius: 2.0)
        Line()
        Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
        Arc(radius: 80, fromX: 48.886/2.0, .counterclockwise)
        Arc(center: (0, -300), fromX: 20.060/2.0, to: (0, 0), .counterclockwise)
    }
}
