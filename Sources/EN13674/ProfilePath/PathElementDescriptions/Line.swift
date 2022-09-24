//
//  Line.swift
//  
//
//  Created by André Rohrbeck on 15.09.22.
//

import Foundation


/// The description of a straight Line within a `Path` description.
///
/// The line description may consist of several boudary conditions. A line is uniquely described by a start and an
/// end point. In some cases it may also enough to give less information, e.g. only the end point, where the line is appended
/// directly to a precedent element with a defined end point.
/// ``Line`` is therefore relying on ``PathBuilder`` tp generate a path out of it.
/// Therefore, a ``Line`` description can't be 'incomplete' only within the context given by the other Path elements
/// it may be insufficient to be uniquely defined, which may prevent rendering.
struct Line: PathElementDescription {

    /// The starting point.
    var from: CGPoint?

    /// The end point.
    var to: CGPoint?

    /// Creates a new ``Line``.
    /// - Parameter from: The starting point.
    /// - Parameter to: The end point.
    init (from: (CGFloat, CGFloat)? = nil, to: (CGFloat, CGFloat)? = nil) {
        if let from {
            self.from = CGPoint(x: from.0, y: from.1)
        }
        if let to {
            self.to = CGPoint(x: to.0, y: to.1)
        }
    }
}
