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
        view.backgroundColor = .red
        addLayoutConstraints()
    }

    fileprivate let displayView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    fileprivate lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .blue
        cv.dataSource = self
        cv.delegate = self
        cv.register(ButtonCell.self, forCellWithReuseIdentifier: cellID)
        return cv
    }()
    
    func addLayoutConstraints() {
        view.addSubviews(displayView, collectionView)
        view.addConstraintsWithFormat("H:|[v0]|", views: displayView)
        view.addConstraintsWithFormat("H:|[v0]|", views: collectionView)
        view.addConstraintsWithFormat("V:|[v0(\(displayViewHeight))][v1]|", views: displayView, collectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as? ButtonCell {
            return cell
        }        
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .zero
    }
    
}

