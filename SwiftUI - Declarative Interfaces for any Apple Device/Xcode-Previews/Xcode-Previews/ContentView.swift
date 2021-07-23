//
//  ContentView.swift
//  Xcode-Previews
//
//  Created by Guilherme on 23/07/21.
//

import SwiftUI

struct ContentView: View {
    
    let dishes = Dish.all()
    
    var body: some View {
        List {
            ForEach(dishes, id: \.self) { dish in
                DishCell(dish: dish)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
