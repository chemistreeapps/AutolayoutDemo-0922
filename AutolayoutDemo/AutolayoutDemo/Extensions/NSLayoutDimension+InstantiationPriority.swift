//
//  NSLayoutDimension+InstantiationPriority.swift
//  AutolayoutDemo
//
//  Created by Andrew Riordan on 8/27/22.
//

import UIKit

extension NSLayoutDimension {
    func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor, multiplier: m)
        constraint.priority = priority
        return constraint
    }
    
    func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor, multiplier: m)
        constraint.priority = priority
        return constraint
    }
}
