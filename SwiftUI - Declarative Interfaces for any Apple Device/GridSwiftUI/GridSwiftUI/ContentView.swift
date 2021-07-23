//
//  ContentView.swift
//  GridSwiftUI
//
//  Created by Guilherme on 22/07/21.
//

import SwiftUI

struct ContentView: View {
    
    let animals = ["🐈","🐆","🦌","🦒","🦏","🐄","🐀","🦩","🦜"]
    @State private var sliderValue: CGFloat = 1
    
    var body: some View {
        NavigationView {
            
            
            VStack {
                Slider(value: $sliderValue, in: 1...8, step: 1)
                    .padding()
                
                Text(String(format: "%.0f", self.sliderValue))
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .clipShape(Circle())
                
                List(self.animals.chunks(size: Int(self.sliderValue)), id: \.self) { chunk in
                    ForEach(chunk, id: \.self) { animal in
                        Text(animal)
                            .frame(width: .infinity)
                            .font(.system(size: CGFloat(300/self.sliderValue)))
                    }
                }
            }
            .navigationBarTitle("Animals")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
