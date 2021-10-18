//
//  ViewController.swift
//  Week4
//
//  Created by Artun Erol on 18.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var collectionView = CollectionView(frame: view.bounds, collectionViewLayout: CustomCompositionalLayout.customLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpConstraintsAndViews()
        view.backgroundColor = .cyan
        collectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
    private func setUpConstraintsAndViews() {
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
    }
}

