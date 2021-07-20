//
//  FactModel.swift
//  Avocados
//
//  Created by Guilherme Mendes on 21/06/21.
//

import SwiftUI

// MARK: - FACT MODEL

struct Fact: Identifiable {
	var id = UUID()
	var image: String
	var content: String
}
