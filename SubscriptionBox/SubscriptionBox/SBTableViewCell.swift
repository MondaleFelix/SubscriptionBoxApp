//
//  SBTableViewCell.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/5/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class SBTableViewCell: UITableViewCell {

    static var identifier : String = "Cell"

    let boxImageView = UIImageView()
    let dateLabel = UILabel()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configure()
    }
    
    
    private func configure(){
        contentView.addSubview(boxImageView)
        contentView.addSubview(dateLabel)
        
        boxImageView.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        
    
        
        NSLayoutConstraint.activate([

            boxImageView.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 10),
            boxImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            boxImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            boxImageView.widthAnchor.constraint(equalToConstant: 80),
            
            
            dateLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
            dateLabel.leadingAnchor.constraint(equalTo: boxImageView.trailingAnchor, constant: 20),
            dateLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0),
            dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
            
        
        ])
        
        
    }
    
    
}
