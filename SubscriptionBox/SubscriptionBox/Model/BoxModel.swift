//
//  BoxModel.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/9/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import Foundation
import UIKit


struct Item {
    let name : String
    let image: String
}

struct Box {
    let date: String
    let items: [Item]
    let image: String
}


struct NewBox {
    let image: UIImage
    let name: String

}
