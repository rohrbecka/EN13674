//
//  RailProfile.swift
//  
//
//  Created by André Rohrbeck on 26.08.22.
//

import Foundation

/// A railway rail profile
public protocol RailProfile: CustomStringConvertible {

    /// The profile name according EN 13674-1: 2017.
    var description: String { get }


    /// Returns the profile as array of x-y-values with optimal resolution.
    ///
    /// - Returns: An array of ``CGPoint``s representing the profile.
    func profile() -> [CGPoint]


    /// Returns the profile as array of x-y-values.
    ///
    /// The distance between neighboring points returned is guaranteed to be smaller than ``resolution``.
    ///
    /// - Parameter resolution: The maximum allowed distance between two neighbouring points.
    /// - Returns: An array o f``CGPoint``s representing the profile.
    func profile(resolution: Double) -> [CGPoint]
}



extension RailProfile {
    func profile() -> [CGPoint] {
        profile(resolution: 0.5)
    }
}
