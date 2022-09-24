//
//  File.swift
//  
//
//  Created by André Rohrbeck on 15.09.22.
//

import Foundation


/// A Straight line connecting two points.
public struct LineElement {
    /// The start point
    public var start: CGPoint

    /// The end point
    public var end: CGPoint
}




extension LineElement: PathElement {
    public var endPoint: CGPoint {
        end
    }


    public var endHeading: Angle {
        GeometricCalculations.angle(of: end, inRespectTo: start)
    }
}



extension LineElement {
    var isVertical: Bool {
        start.x == end.x
    }


    var isHorizontal: Bool {
        start.y == end.y
    }

    var m: Double {
        (end.y - start.y) / (end.x - start.x)
    }

    var b: Double {
        start.y - m * start.x
    }

    func y(atX x: Double) -> CGFloat {
        m * x + b
    }

    var dx: Double {
        end.x - start.x
    }


    var dy: Double {
        end.y - start.y    }

    var length: Double {
        sqrt( dx * dx + dy * dy )
    }


    /// The direction of this ``StraightLine`` in degrees from 0° to 360° (excluded)
    ///
    /// 0° is defined along the x-axis, turning lieft is positive (y axis is 90°).
    var heading: Double {
        if dx == 0 {
            if dy > 0 {
                return 90.0
            } else {
                return 270.0
            }
        } else {
            var angle = atan (dy/dx) * 180.0 / Double.pi
            if dx < 0 {
                angle = angle + 180
            }
            while angle < 0 {
                angle = angle + 360.0
            }
            return angle
        }
    }
}
