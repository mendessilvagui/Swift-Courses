//
//  HeaderModel.swift
//  Avocados
//
//  Created by Guilherme Mendes on 15/06/21.
//

import SwiftUI

// MARK: - HEADER MODEL

struct Header: Identifiable {
	var id = UUID()
	var image: String
	var headline: String
	var subheadline: String
}
