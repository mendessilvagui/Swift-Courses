//
//  Order.swift
//  CoffeeOrderingApp
//
//  Created by Guilherme on 23/07/21.
//

import Foundation

struct Order: Codable {
    
    let name: String
    let size: String
    let coffeeName: String
    let total: Double
}
