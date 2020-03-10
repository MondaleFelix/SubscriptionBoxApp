//
//  SBCell.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/3/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class SBCell: UICollectionViewCell {
    

    static var identifier : String = "Cell"
    
    var textLabel = UILabel(frame: .zero)
    var isNotSelected = true
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame : frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configure(){
        backgroundColor = .systemBlue
        layer.cornerRadius = 10
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.font = UIFont(name: "Avenir Next Condensed Heavy", size: 50)
        textLabel.textColor = .white
        self.contentView.addSubview(textLabel)
        self.textLabel.textAlignment = .center
        
        NSLayoutConstraint.activate([
            self.textLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            self.textLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    func changeColor(){
        if isNotSelected{
            self.backgroundColor = .systemGray2
            self.isNotSelected = false
        } else {
            self.backgroundColor = .systemBlue
            self.isNotSelected = true
        }
    }

    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.textLabel.textAlignment = .center
    }
}
