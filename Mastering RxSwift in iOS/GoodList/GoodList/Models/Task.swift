//
//  Task.swift
//  GoodList
//
//  Created by Guilherme on 14/07/21.
//

import Foundation

enum Priority: Int {
    case high
    case medium
    case low
}

struct Task {
    let title: String
    let priority: Priority
}

