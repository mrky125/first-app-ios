//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Katsuyuki Mori on 2021/04/15.
//

import SwiftUI

struct ContentView: View {
    @State var labelText = "Hello, world!"
    
    var body: some View {
        // Arranges its children in a vertical line.
        VStack {
            Text(labelText)
                .padding()
                .foregroundColor(.orange)
            
            Button(action: {
                labelText = "Hello, Swift UI!"
            }, label: {
                Text("Button")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
