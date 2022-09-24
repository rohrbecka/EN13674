//
//  Fillet.swift
//  
//
//  Created by André Rohrbeck on 15.09.22.
//

import Foundation

/// Describes a ``PathElement`` connecting two intersecting lines with a radius.
struct Fillet: ConnectingElementDescription {
    // The radius of the fillet.
    var radius: CGFloat

    /// Creates a ``Fillet`` with a given `radius`.
    ///
    /// - Parameter radius: The radius of the fillet.
    init(radius: CGFloat) {
        self.radius = radius
    }
}
