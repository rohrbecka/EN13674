//
//  ProfilePathElement.swift
//  
//
//  Created by André Rohrbeck on 15.09.22.
//

import Foundation


/// An element of a ``Path``.
protocol PathElement {
    /// The endpoint of the path element.
    var end: CGPoint { get }

    /// The direction of the ned of the path element (in x-direction is 0, in y is π/2, negative x is -π and negative y is -3/2·π.
    var endHeading: Angle { get }
}



