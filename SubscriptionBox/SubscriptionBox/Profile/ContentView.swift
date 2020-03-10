//
//  ContentView.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/9/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    var body: some View {
        NavigationView {
        VStack {
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 250)
            
            RoundImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .center) {
                Text("Mondale")
                    .font(.title)
                    .padding()

                Text("Hometown: Los Angeles, CA")
                    .font(.subheadline)
                Text("Loves birria tacos")
                    .font(.subheadline)
            }
            .padding()
        .navigationBarTitle(Text("Profile"), displayMode: .inline)
        }
            
    }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
