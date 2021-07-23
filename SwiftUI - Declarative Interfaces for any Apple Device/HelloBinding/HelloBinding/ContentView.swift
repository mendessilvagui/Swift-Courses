//
//  ContentView.swift
//  HelloBinding
//
//  Created by Guilherme on 20/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    
    private func printName() {
        print(self.name)
    }
    
    var body: some View {
        VStack {
            Text(name)
                .padding()
            TextField("Enter name", text: $name)
                .padding()
            
            Button(action: printName) {
                Text("Show Name Value")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
