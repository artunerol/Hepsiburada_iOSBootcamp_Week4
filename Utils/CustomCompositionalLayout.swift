//
//  CustomCompositionalLayout.swift
//  Week4
//
//  Created by Artun Erol on 18.10.2021.
//

import Foundation

import UIKit

class CustomCompositionalLayout {
    public static func customLayout() -> UICollectionViewCompositionalLayout{
        return UICollectionViewCompositionalLayout { section, env in
            let item = NSCollectionLayoutItem(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
            item.contentInsets.trailing = 5
            item.contentInsets.bottom = 15
            item.contentInsets.leading = 5
            let group = NSCollectionLayoutGroup.vertical(layoutSize: .init(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(0.2)), subitems: [item])
            let section = NSCollectionLayoutSection(group: group)
            
            return section
        }
    }
}
