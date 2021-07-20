//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Guilherme Mendes on 09/06/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
