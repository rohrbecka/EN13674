//
//  P46E1.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// The 46E1 rail profile according to appendix A, picture A.1 of EN 13674-1:2017.
internal struct P46E1: RailProfile {

    private var A = CGPoint(x: 0.0, y: 0.0)

    private var Am = CGPoint(x: 0.0, y: -300.0)

    private var B: CGPoint {
        let x = -18.881 / 2.0
        let angle = asin(x/300)
        let y = cos(angle)*300 - 300.0

        return CGPoint(x: x, y: y)
    }


    private var Bm: CGPoint {
        (Am * 80.0 + B * 220.0) / 300.0
    }

    private var C: CGPoint {
        let x = -43.881 / 2.0
        let angle = asin((x - Bm.x) / 80.0)
        let y = cos(angle) * 80.0 + Bm.y
        return CGPoint(x: x, y: y)
    }


    private var Cm: CGPoint {
        (Bm * 13.0 + C * 67.0) / 80.0
    }


    private var D: CGPoint {
        CGPoint(x: -32.5, y: Cm.y)
    }


    private var E = CGPoint(x: -32.5, y: -36.875)

    private var X = CGPoint(x: 0.0, y: -45.0)

    private var I = CGPoint(x: -8.0, y: -45.0)

    private var J = CGPoint(x: -7.0, y: -145 + 62.5 + 15.0)

    private var K = CGPoint(x: -7.0, y: -145 + 62.5 - 15.0)

    private var N = CGPoint(x: 0, y: -120)

    private var O = CGPoint(x: -62.5, y: -120.0 - 62.5/4.0)

    private var Q = CGPoint(x: -62.5, y: -144.0)

    private var Qm = CGPoint(x: -61.5, y: -144.0)
    private var R = CGPoint(x: -61.5, y: -145.0)
    private var S = CGPoint(x: 0.0, y: -145.0)


    public var description: String {
        "EN 13674 - 46E1"
    }


    public func profile() -> [CGPoint] {
        profile(resolution: 0.5)
    }


    public func profile(resolution: Double) -> [CGPoint] {
        let profile = Path {
            Arc(center: (0, -300), from: (0, 0), toX: -18.881/2.0,  .counterclockwise)
            Arc(radius: 80, toX: -43.881 / 2.0, .counterclockwise)
            Arc(radius: 13, toX: -32.5, .counterclockwise)
            Line(to: (-32.5, -45 + 32.5/4.0))
            Fillet(radius: 1.0)
            Line(to: (0, -45))
            Fillet(radius: 6)
            Arc(radius: 30.0, centerY: -145 + 62.5 + 26.95, .clockwise)
            Line(from: (-8, -45), to: (-7, -145.0 + 62.5 + 15.0))
            Line(to: (-7, -145.0 + 62.5 - 15.0 ))
            Line(to: (-9, -120))
            Arc(radius: 30.0, centerY: -145+62.5-26.7, .clockwise)
            Fillet(radius: 6.0)
            Line(from: (0, -120), to: (-62.5, -120 - 62.5/4))
            Fillet(radius: 2.0)
            Line(from: (-62.5, -120), to: (-62.5, -145))
            Fillet(radius: 1.0)
            Line(from: (-62.5, -145), to: (62.5, -145))
            Fillet(radius: 1.0)
            Line(from: (62.5, -145), to: (62.5, -120))
            Fillet(radius: 2.0)
            Line(from: (62.5, -120 - 62.5/4), to: (0, -120) )
            Fillet(radius: 6.0)
            Arc(radius: 30.0, centerY: -145+62.5-26.7, .clockwise)
            Line(from: (9, -120), to: (7, -145.0 + 62.5 - 15.0))
            Line(to: (7, -145+62.5+15.0))
            Arc(radius: 30, centerY: -145+62.5+26.95, .clockwise)
            Fillet(radius: 6.0)
            Line(from: (0, -45), to: (32.5, -45 + 32.5/4.0))
            Fillet(radius: 1.0)
            Line(to: (32.5, 0))
//            Arc(radius: 13, .counterclockwise)
//            Arc(fromX: -43.881/2.0, radius: 80, .counterclockwise)
//            Arc(to: (0, 0), fromX: -18.881/2.0, center: (0, -300), radius: 300, .counterclockwise)

        }
        return profile.profile(resolution: resolution)
    }
}



//Trying to describe the profile in a DSL
//
//{
//    Arc(from: (0, 0), startingAngle: 90.0, radius 300.0, toX: -18.881/2.0)
//    Arc(continuing: .tangential, radius: 80.0, toX: -43.881/2.0)
//    Arc(continuing: .tangential, radius: 13.0, toAngle: 180.0)
//    Straight(to: (-32.5, -45+32.5/4.0))
//    Fillet(radius: 1.0) // combines to lines at their intersection point
//    Straight(to: (0, -45))
//    Fillet {
//        Arc(continuing: .tangential, radius: 6.0)
//        Arc(continuing: .tangential, radius: 30.0, yCenter: -145.0 + 62.5 + 26.95, ending: .tangential)
//    }
//    Straight(from: (-8.0, -45.0), to: -7.0, -145.0 + 62.5 + 15))
//

