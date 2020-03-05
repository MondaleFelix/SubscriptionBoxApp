//
//  SBCollectionViewCell.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/5/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class SBCollectionViewCell: UICollectionViewCell {
    
    static var identifier : String = "SBCollectionViewCell"

    let cellImage = UIImageView()
    let textLabel = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
        contentView.addSubview(cellImage)
        contentView.addSubview(textLabel)
        cellImage.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.layer.borderWidth = 2
        contentView.layer.cornerRadius = 10
        

        textLabel.font = UIFont(name: "Avenir Next Condensed Heavy", size: 30)

        
        
        NSLayoutConstraint.activate([
            
            cellImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cellImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 50),
            cellImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            cellImage.widthAnchor.constraint(equalToConstant: 100),
            
            textLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -50),
            textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            textLabel.leadingAnchor.constraint(equalTo: cellImage.trailingAnchor, constant: 50)

        ])
    }
    
}
