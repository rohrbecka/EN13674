//
//  TalgoRodalECx.swift
//  
//
//  Created by André Rohrbeck on 04.12.22.
//

import Foundation
import ProfilePath


struct TalgoRodalECx: RailProfile {
    public var description: String {
        "Talgo ECx wheel profile"
    }

    public var legacyDescription: String? {
        return nil
    }

    internal static var profile = Path {
        Line(from: (65, 0.05*35 + 0.067*25 + 15), to: (65, 0.05*35 + 0.067*25 + 5))
        Line(to: (60, 0.05*35 + 0.067*25))
        Line(to: (35, 0.05*35))
        Line(to: (0, 0))
        Arc(radius: 115, .counterclockwise, toHeading: Angle(degrees: -150))
        Fillet(radius: 13)
        Line(from: (-70+34.26, 0), Angle(degrees: 250))
        Fillet(radius: 13.12)
        Line(from: (-70+2.15, -30.5), Angle(degrees: 96))
        Line(from: (-70, -30), to: (-70, 0))
    }
}
