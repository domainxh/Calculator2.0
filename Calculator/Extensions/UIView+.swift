//
//  UIView++.swift
//  Calculator
//
//  Created by Soja on 9/24/17.
//  Copyright © 2017 Xiaoheng Pan. All rights reserved.
//

import UIKit

extension UIView {
    func addConstraintsWithFormat(_ format: String, views: UIView...) {
        var viewsDictionary = [String: UIView]()
        for (index, view) in views.enumerated() {
            let key = "v\(index)"
            view.translatesAutoresizingMaskIntoConstraints = false
            viewsDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format, options: NSLayoutFormatOptions(), metrics: nil, views: viewsDictionary))
    }
    
    func addSubviews(_ views: UIView...) {
        for i in views {
            addSubview(i)
        }
    }
}
