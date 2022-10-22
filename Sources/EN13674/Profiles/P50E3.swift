//
//  P50E3.swift
//  
//
//  Created by André Rohrbeck on 13.10.22.
//

import Foundation


internal struct P50E3: RailProfile {
    public var description: String {
        "EN 13674 – 50E2"
    }



    public func profile(resolution: Double) -> [CGPoint] {
        let profile = Path {
            Arc(center: (0, -300), from: (0, 0), toX: -18.233/2.0, .counterclockwise)
            Arc(radius: 80, toX: -49.982/2.0, .counterclockwise)
            Arc(radius: 13, .counterclockwise, toHeading: Angle(dx: -1, dy: -20))
            Line()
            Fillet(radius: 2)
            Line(Angle(dx: 3, dy: -1), to: (0.0, -48))
            Fillet(radius: 7)
            Arc(radius: 450, centerY: -80, .clockwise)
            // this is a workaround as an Arc with only a center can't be drawn, therefore it is split up with a Line
            Line(from: (-7, -79.9999), to: (-7, -80.0001))
            Arc(radius: 450, centerY: -80, .clockwise)
            Fillet(radius: 7)
            Line(from: (0, -128), Angle(dx: -3, dy: -1))
            Fillet(radius: 40)
            Line(Angle(dx: -8.31, dy: -1), to: (-66.5, -145))
            Fillet(radius: 3)
            Line(to: (-66.5, -155))
            Fillet(radius: 2)
            Line(to: (66.5, -155))
            Fillet(radius: 2)
            Line(to: (66.5, -145))
            Fillet(radius: 3)
            Line(from: (66.5, -145), Angle(dx: -8.31, dy: 1))
            Fillet(radius: 40)
            Line(Angle(dx: -3, dy: 1), to: (0, -128))
            Fillet(radius: 7)
            Arc(radius: 450, centerY: -80, .clockwise)
            // this is a workaround as an Arc with only a center can't be drawn, therefore it is split up with a Line
            Line(from: (7, -80.0001), to: (7, -79.9999))
            Arc(radius: 450, centerY: -80, .clockwise)
            Fillet(radius: 7)
            Line(from: (0, -48), Angle(dx: 3, dy: 1))
            Fillet(radius: 2)
            Line(Angle(dx: -1, dy: 20))
            Arc(radius: 13, fromHeading: Angle(dx: -1, dy: 20), .counterclockwise)
            Arc(radius: 80, fromX: 49.982/2.0, .counterclockwise)
            Arc(radius: 300, center: (0, -300), fromX: 18.233/2.0, to: (0, 0), .counterclockwise)
        }
        return profile.profile(resolution: resolution)
    }
}
