//
//  RoundImage.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/9/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import SwiftUI

struct RoundImage: View {
    var body: some View {
    
        Image("mondale")
            .resizable()
            .scaledToFit()
            .frame(width: 200.0,height:200)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        RoundImage()
    }
}
