//
//  DishCell.swift
//  Xcode-Previews
//
//  Created by Guilherme on 23/07/21.
//

import Foundation
import SwiftUI

struct DishCell: View {
    
    let dish: Dish
    
    var body: some View {
        
        HStack {
            
            Image(dish.imageURL)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            VStack {
                Text(dish.name)
                Text(String(format: "$%.2f", dish.price))
                    .foregroundColor(Color.green)
            }
            .padding()
        }
        .padding()
    }
}

struct DisCell_Preview: PreviewProvider {
    
    static let dynamicTypeSizes: [ContentSizeCategory] = [.extraSmall, .small, .large, .extraLarge]
    
    static var previews: some View {
        
        ForEach(dynamicTypeSizes, id:\.self) { sizeCategory in
            
            DishCell(dish: Dish.all()[0])
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .environment(\.sizeCategory, sizeCategory)
        }
    }
}
