//
//  ThemeSettings.swift
//  Todo App
//
//  Created by Guilherme on 05/07/21.
//

import SwiftUI

//MARK: - THEME CLASS

class ThemeSettings: ObservableObject {
    @Published var themeSettings: Int = UserDefaults.standard.integer(forKey: "Theme") {
        didSet {
            UserDefaults.standard.set(self.themeSettings, forKey: "Theme")
        }
    }
}
