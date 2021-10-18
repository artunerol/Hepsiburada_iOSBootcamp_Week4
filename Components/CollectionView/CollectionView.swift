//
//  CollectionView.swift
//  Week4
//
//  Created by Artun Erol on 18.10.2021.
//

import UIKit

class CollectionView: UICollectionView {
    
    //MARK: - LifeCycle
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        setUPInit()
        getData()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Funcs
    private func setUPInit() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
        //        delegate = self
        //        dataSource = self
    }
    
    private func registerCells() {
        register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
    private func getData() {
        APIHandler.shared.getDataFromURL { dataasdasd in
            print("asdasdasd is \(dataasdasd)")
        }
    }
}

////MARK: - Extensions
//
//extension CollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 1
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//    }


//}
