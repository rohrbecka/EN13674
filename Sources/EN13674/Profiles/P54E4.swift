//
//  P54E4.swift
//  
//
//  Created by André Rohrbeck on 22.10.22.
//

import Foundation


internal struct P54E4: RailProfile {
    public var description: String {
        "EN 13674 – 54E4"
    }



    public func profile(resolution: Double) -> [CGPoint] {
        return P54E4.profile.profile(resolution: resolution)
    }



    internal static var profile = Path {
        Arc(center: (0, -115), from: (0, 0), toX: -41.342/2.0, .counterclockwise)
        Arc(radius: 16.5, toX: -62.980/2.0, .counterclockwise)
        Arc(radius: 15.5, toX: -66/2.0, .counterclockwise)
        Arc(radius: 7.64, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -17.2))
        Line()
        Fillet(radius: 5)
        Line(Angle(dx: 3, dy: -1), to: (0.0, -55))
        Fillet(radius: 16)
        Arc(radius: 500, center: (-508, -154+75), .clockwise)
        Fillet(radius: 16)
        Line(from: (0, -154+29), Angle(dx: -3, dy: -1))
        Fillet(radius: 40)
        Line(Angle(dx: -7.81, dy: -1), to: (-62.5, -154+12))
        Fillet(radius: 3)
        Line(to: (-62.5, -154))
        Fillet(radius: 2)
        Line(to: (62.5, -154))
        Fillet(radius: 2)
        Line(to: (62.5, -154+12))
        Fillet(radius: 3)
        Line(from: (62.5, -154+12), Angle(dx: -7.81, dy: 1))
        Fillet(radius: 40)
        Line(Angle(dx: -3, dy: 1), to: (0, -154+29))
        Fillet(radius: 16)
        Arc(radius: 500, center: (508, -154+75), .clockwise)
        Fillet(radius: 16)
        Line(from: (0.0, -55), Angle(dx: 3, dy: 1))
        Fillet(radius: 5)
        Line()
        Arc(radius: 7.64, fromHeading: Angle(dx: -1.0, dy: 17.2), .counterclockwise)
        Arc(radius: 15.5, fromX: 66.0/2, .counterclockwise)
        Arc(radius: 16.5, fromX: 62.980/2.0, .counterclockwise)
        Arc(radius: 115, center: (0, -115), fromX: 41.342/2.0, to: (0, 0), .counterclockwise)
    }

}
