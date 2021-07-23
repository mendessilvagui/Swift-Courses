//
//  ContentView.swift
//  Hello-SwiftUI
//
//  Created by Guilherme on 22/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            
            Image("teste")
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .padding()
            
            Text("Hello")
                .font(.largeTitle)
                .padding()

            Text("Hello, world!")
                .padding()
            
            HStack {
                Text("Left Side")
                Text("Right Side")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
