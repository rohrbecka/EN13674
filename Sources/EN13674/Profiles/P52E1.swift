//
//  P52E1.swift
//  
//
//  Created by André Rohrbeck on 15.10.22.
//

import Foundation


internal struct P52E1: RailProfile {
    public var description: String {
        "EN 13674 – 52E1"
    }



    public func profile(resolution: Double) -> [CGPoint] {
        let profile = Path {
            Arc(center: (0, -350), from: (0, 0), toX: -42.456/2.0, .counterclockwise)
            Arc(radius: 12, .counterclockwise, toHeading: Angle(degrees: 270))
            Line()
            Fillet(radius: 5)
            Line(Angle(dx: 2, dy: -1), to: (0.0, -55))
            Fillet(radius: 12)
            Arc(radius: 400, centerY: -150+32+43, .clockwise)
            Line(from: (-7.5, -150+32+43.001), to: (-7.5, -150+32+42.999))
            Arc(radius: 600, centerY: -150+32+43, .clockwise)
            Fillet(radius: 12)
            Line(from: (0, -150+32), Angle(dx: -2, dy: -1))
            Fillet(radius: 30)
            Line(Angle(dx: -10, dy: -1), to: (-75, -140))
            Fillet(radius: 4)
            Line(to: (-75, -150))
            Fillet(radius: 3)
            Line(to: (75, -150))
            Fillet(radius: 3)
            Line(to: (75, -140))
            Fillet(radius: 4)
            Line(from: (75, -140), Angle(dx: -10, dy: 1))
            Fillet(radius: 30)
            Line(Angle(dx: -2, dy: 1), to: (0, -150+32))
            Fillet(radius: 12)
            Arc(radius: 600, centerY: -150+32+43, .clockwise)
            Line(from: (7.5, -150+32+42.9999), to: (7.5, -150+32+43.0001))
            Arc(radius: 400, centerY: -150+32+43, .clockwise)
            Fillet(radius: 12)
            Line(from: (0.0, -55), Angle(dx: 2, dy: 1))
            Fillet(radius: 5)
            Line()
            Arc(radius: 12, fromHeading: Angle(dx: 0, dy: 2), .counterclockwise)
            Arc(radius: 350, center: (0, -350), fromX: 42.456/2.0, to: (0, 0), .counterclockwise)
        }
        return profile.profile(resolution: resolution)
    }
}
