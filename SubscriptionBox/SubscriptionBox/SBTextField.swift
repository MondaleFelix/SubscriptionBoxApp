//
//  SBTextField.swift
//  SubscriptionBox
//
//  Created by Mondale on 2/24/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class SBTextField: UITextField {


    override init(frame: CGRect) {
        super.init(frame:frame)
        configure()
    }
    
    init(text: String) {
        super.init(frame: .zero)
        placeholder = text
        configure()

        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .go
    }
    
}
