//
//  LayoutConfig.swift
//  Calculator
//
//  Created by Soja on 9/24/17.
//  Copyright © 2017 Xiaoheng Pan. All rights reserved.
//

import UIKit

let statusBarHeight = UIApplication.shared.statusBarFrame.height
let displayViewHeight = (UIScreen.main.bounds.height - statusBarHeight) * 0.33
let solutionLabelHeight = displayViewHeight * 0.6
let equationLabelHeight = displayViewHeight * 0.4

let collectionViewSize = CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - statusBarHeight - displayViewHeight)

let cellPerRow: CGFloat = 4
let cellPerColumn: CGFloat = 5
let cellWidth = collectionViewSize.width / cellPerRow
let cellHeight = collectionViewSize.height / cellPerColumn
let cellSize = CGSize(width: cellWidth, height: cellHeight)
