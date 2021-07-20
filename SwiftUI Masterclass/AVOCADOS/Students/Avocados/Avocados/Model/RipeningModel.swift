//
//  RipeningModel.swift
//  Avocados
//
//  Created by Guilherme on 02/07/21.
//

import SwiftUI

//MARK: - RIPENING MODEL

struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

