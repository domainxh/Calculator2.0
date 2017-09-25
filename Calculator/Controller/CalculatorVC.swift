//
//  ViewController.swift
//  Calculator
//
//  Created by Soja on 9/24/17.
//  Copyright © 2017 Xiaoheng Pan. All rights reserved.
//

import UIKit

class CalculatorVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addLayoutConstraints()
    }

    fileprivate let displayView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    fileprivate let equationLabel: UILabel = {
        let label = UILabel()
        label.text = "40.18404"
        label.backgroundColor = .orange
        label.textAlignment = .right
        label.font = UIFont(name: "AvenirNext-Regular", size: 25)
        return label
    }()
    
    fileprivate let solutionLabel: UILabel = {
        let label = UILabel()
        label.text = "40.9321"
        label.backgroundColor = .red
        label.textAlignment = .right
        label.font = UIFont(name: "AvenirNext-Regular", size: 50)
        return label
    }()
    
    fileprivate lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .clear
        cv.layer.borderColor = UIColor.green.cgColor
        cv.layer.borderWidth = 5
        cv.dataSource = self
        cv.delegate = self
        cv.isScrollEnabled = false
        cv.register(ButtonCell.self, forCellWithReuseIdentifier: cellID)
        return cv
    }()
    
    func addLayoutConstraints() {
        view.addSubviews(displayView, collectionView)
        view.addConstraintsWithFormat("H:|[v0]|", views: displayView)
        view.addConstraintsWithFormat("H:|[v0]|", views: collectionView)
        view.addConstraintsWithFormat("V:|-\(statusBarHeight)-[v0][v1(\(collectionViewSize.height))]|", views: displayView, collectionView)
        
        displayView.addSubviews(equationLabel, solutionLabel)
        view.addConstraintsWithFormat("H:|-[v0]-|", views: equationLabel)
        view.addConstraintsWithFormat("H:|-[v0]-|", views: solutionLabel)
        view.addConstraintsWithFormat("V:|[v0(\(equationLabelHeight))][v1]|", views: equationLabel, solutionLabel)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? ButtonCell {
            cell.buttonLabel.text = "\(indexPath.item)"
            return cell
        }        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("xh: item selected")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return cellSize
    }    
}

