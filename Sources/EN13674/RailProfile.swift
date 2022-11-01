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


    /// Before the release of EN 13674 the rail profiles had either "national" names or
    /// UIC-names, which are still used in several areas to refer to the profile. Therefore
    /// these names are available as `legacyDescription`. They correspond to
    /// Table A.1 in EN 13674-1:2017-07.
    ///
    /// Shall return `nil` if there is no legacy description.
    var legacyDescription: String? { get }


    static var profile: Path { get }
}



extension RailProfile {
    func profile() -> [CGPoint] {
        profile(resolution: 0.5)
    }



    /// Returns the profile as array of x-y-values.
    ///
    /// The distance between neighboring points returned is guaranteed to be smaller than ``resolution``.
    ///
    /// - Parameter resolution: The maximum allowed distance between two neighbouring points.
    /// - Returns: An array o f``CGPoint``s representing the profile.
    public func profile(resolution: Double) -> [CGPoint] {
        return Self.profile.profile(resolution: resolution)
    }
}
