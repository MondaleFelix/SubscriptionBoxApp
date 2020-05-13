//
//  FavoritesSection.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/5/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

struct FavoritesSection: Section {
    let numberOfItems = 7
    
    let favorites = [ Item(name: "Snacks", image: "box"),
                      Item(name: "Treats", image: "box"),
                      Item(name: "Bites", image: "box"),
                      Item(name: "Bones", image: "box"),
                      Item(name: "Cat", image: "box"),
                      Item(name: "Dog Eggs", image: "box"),
                      Item(name: "Dog Balls", image: "box")
        ]
    
    func layoutSection() -> NSCollectionLayoutSection? {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(0.20))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitem: item, count: 1)
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.interGroupSpacing = 30
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SBCollectionViewCell.identifier, for: indexPath) as! SBCollectionViewCell
        let favItem = favorites[indexPath.row]
        cell.textLabel.text = favItem.name
        cell.cellImage.image = UIImage(named: favItem.image)
        return cell
    }
    
}
