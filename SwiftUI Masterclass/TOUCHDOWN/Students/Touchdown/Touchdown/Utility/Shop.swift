//
//  Shop.swift
//  Touchdown
//
//  Created by Guilherme Mendes on 10/06/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
