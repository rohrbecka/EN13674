//
//  Angle.swift
//  
//
//  Created by André Rohrbeck on 23.09.22.
//

import Foundation

/// A value representing a geometric angle.
///
/// If the ``Angle`` is used as an absolute direction, an angle of 0 is representing the direction
/// of the x-axis. The y-axis is at an angle of 90° or π/2.
///
/// The raw angle value is stored as non-normalized radians value.
/// The value is normalised, whenever it is requested.
///
public struct Angle: Equatable {
    /// The raw value of the ``Angle`` in radians, which is not normalized.
    private var rawValue: CGFloat



    /// The angle in radians. Going from 0 (representing the x-axis) to 2π (excluded).
    public var rad: CGFloat {
        rawValue.normalised(0..<Double.pi*2.0)
    }



    /// The ``Angle`` in degrees going from 0° to 360° (excluded).
    public var degrees: CGFloat {
        (rawValue / Double.pi * 180.0).normalised(0..<360.0)
    }



    /// Creates a new ``Angle`` based on a radians value.
    ///
    /// - Parameter radValue: The angle value in radians (normalised).
    public init(radians radValue: CGFloat) {
        self.rawValue = radValue
    }



    /// Creates a new ``Angle`` based on a value in degree.
    ///
    /// - Parameter degValue: The angle value in degrees (normalised).
    public init(degrees degValue: CGFloat) {
        self.rawValue = degValue / 180.0 * Double.pi
    }



    public static func==(lhs: Angle, rhs: Angle) -> Bool {
        lhs.rad == rhs.rad
    }
}



extension CGFloat {
    /// Returns the ``Double`` value normalised to a certain range.
    func normalised(_ range: Range<Double>) -> Double {
        var value = self
        let delta = range.upperBound - range.lowerBound
        while value < range.lowerBound {
            value = value + delta
        }
        while value >= range.upperBound {
            value = value - delta
        }
        return value
    }
}
