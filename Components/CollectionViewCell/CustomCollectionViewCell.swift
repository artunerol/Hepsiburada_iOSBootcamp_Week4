//
//  CustomCollectionViewCell.swift
//  Week4
//
//  Created by Artun Erol on 18.10.2021.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    public static let identifier = "CustomCollectionViewCell"
    
    private lazy var imageView : UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 10
        temp.layer.masksToBounds = true
        
        return temp
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraintsAndViews() {
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor)
        ])
    }
    
}
