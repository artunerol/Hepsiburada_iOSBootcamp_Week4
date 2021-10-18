//
//  CustomCollectionViewCell.swift
//  Week4
//
//  Created by Artun Erol on 18.10.2021.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    public static let identifier = "CustomCollectionViewCell"
    
    public lazy var imageView : UIImageView = {
        let temp = UIImageView()
        temp.translatesAutoresizingMaskIntoConstraints = false
        temp.layer.cornerRadius = 10
        temp.layer.masksToBounds = true
        temp.backgroundColor = .brown
        
        return temp
    }()
    
    public lazy var label: UILabel = {
        let temp = UILabel()
        temp.textColor = .white
        temp.translatesAutoresizingMaskIntoConstraints = false
        
        return temp
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpConstraintsAndViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpConstraintsAndViews() {
        addSubview(imageView)
        imageView.addSubview(label)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            
            label.centerXAnchor.constraint(equalTo: imageView.centerXAnchor),
            label.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: imageView.bottomAnchor,constant: -20)
        ])
    }
    
}
