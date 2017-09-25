//
//  ButtonView.swift
//  Calculator
//
//  Created by Soja on 9/24/17.
//  Copyright © 2017 Xiaoheng Pan. All rights reserved.
//

import UIKit

class ButtonCell: UICollectionViewCell {
    let buttonLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textAlignment = .center
        return label
    }()
    
    func setupView() {
        addSubview(buttonLabel)
        addConstraintsWithFormat("H:|[v0]|", views: buttonLabel)
        addConstraintsWithFormat("V:|[v0]|", views: buttonLabel)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
