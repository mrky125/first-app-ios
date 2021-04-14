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
            
            NavigationView {
                NavigationLink(
                    destination: SecondView(secondText: "Second View!"),
                    label: {
                        /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                    })
            }
        }
    }
}

struct SecondView: View {
    let secondText: String
    
    var body: some View {
        Text(secondText)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
