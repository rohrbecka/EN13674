//
//  P60E2.swift
//  
//
//  Created by André Rohrbeck on 22.10.22.
//

import Foundation


internal struct P60E2: RailProfile {
    public var description: String {
        "EN 13674 – 60E2"
    }



    public func profile(resolution: Double) -> [CGPoint] {
        let profile = Path {
            Arc(center: (0, -200), from: (0, 0), toX: -23.778/2.0, .counterclockwise)
            Arc(radius: 70, toX: -48.913/2.0, .counterclockwise)
            Arc(radius: 16, toX: -70.774/2.0, .counterclockwise)
            Arc(radius: 8, .counterclockwise, toHeading: Angle(dx: -1.0, dy: -20))
            Line()
            Fillet(radius: 3)
            Line(Angle(dx: 2.75, dy: -1), to: (0.0, -51))
            Fillet(radius: 7)
            // TODO: These two arcs don't work after each other
            Arc(radius: 35, centerY: -172+31.5+28.75+32+19.5, .clockwise)
            Arc(radius: 120, centerY: -172+31.5+28.75+32, .clockwise)
            Line(from: (-8.25, -172+31.5+28.75+32), to: (-8.25, -172+31.5+28.75))
            // TODO: These two arcs don't work after each other
            Arc(radius: 120, centerY: -172+31.5+28.75, .clockwise)
            Arc(radius: 35, centerY: -172+31.5+28.75-19.5, .clockwise)
            Fillet(radius: 7)
            Line(from: (0, -172+31.5), Angle(dx: -2.75, dy: -1))
            Fillet(radius: 40)
            Line(Angle(dx: -14, dy: -1), to: (-75, -172+11.5))
            Fillet(radius: 4)
            Line(to: (-75, -172))
            Fillet(radius: 2)
            Line(to: (75, -172))
            Fillet(radius: 2)
            Line(to: (75, -172+11.5))
            Fillet(radius: 4)
            Line(from: (70, -172+11.5), Angle(dx: -14, dy: 1))
            Fillet(radius: 40)
            Line(Angle(dx: -2.75, dy: 1), to: (0, -172+31.5))
            Fillet(radius: 7)
            // TODO: These two arcs don't work after each other
            Arc(radius: 35, centerY: -172+31.5+28.75-19.5, .clockwise)
            Arc(radius: 120, centerY: -172+31.5+28.75, .clockwise)
            Line(from: (8.25, -172+31.5+28.75), to: (8.25, -172+31.5+28.75+32))
            // TODO: These two arcs don't work after each other
            Arc(radius: 120, centerY: -172+31.5+28.75+32, .clockwise)
            Arc(radius: 35, centerY: -172+31.5+28.75+32+19.5, .clockwise)
            Fillet(radius: 7)
            Line(from: (0.0, -51), Angle(dx: 2.75, dy: 1))
            Fillet(radius: 3)
            Line()
            Arc(radius: 8, fromHeading: Angle(dx: -1.0, dy: 20), .counterclockwise)
            Arc(radius: 16, fromX: 70.774/2.0, .counterclockwise)
            Arc(radius: 80, fromX: 48.913/2.0, .counterclockwise)
            Arc(radius: 200, center: (0, -200), fromX: 23.778/2.0, to: (0, 0), .counterclockwise)
        }
        return profile.profile(resolution: resolution)
    }
}
