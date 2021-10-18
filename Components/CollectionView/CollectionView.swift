//
//  CollectionView.swift
//  Week4
//
//  Created by Artun Erol on 18.10.2021.
//

import UIKit

class CollectionView: UICollectionView {
    
    //MARK: - LifeCycle
    
    private lazy var jsonData = [ImageJSON]()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        getData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.registerCells()
            self.setUPInit()

        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Funcs
    private func setUPInit() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
        self.delegate = self
        self.dataSource = self
    }
    
    private func registerCells() {
        register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
    
    private func getData() {
        APIHandler.shared.getDataFromURL { fetchedJSON in
            self.jsonData = fetchedJSON
        }
    }
}

//MARK: - Extensions

extension CollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell else { return UICollectionViewCell() }
        cell.label.text = jsonData[indexPath.row].author
        
        
        return cell
    }
    
}
