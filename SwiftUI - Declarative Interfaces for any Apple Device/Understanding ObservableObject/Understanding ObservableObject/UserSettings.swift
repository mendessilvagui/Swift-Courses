//
//  UserSettings.swift
//  Understanding ObservableObject
//
//  Created by Guilherme on 20/07/21.
//

import Foundation
import SwiftUI
import Combine

class UserSettings: ObservableObject {
    
    @Published var score: Int = 0
}
