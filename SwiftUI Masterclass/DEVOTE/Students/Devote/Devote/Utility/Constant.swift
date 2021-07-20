//
//  Constant.swift
//  Devote
//
//  Created by Guilherme Mendes on 10/06/21.
//

import SwiftUI

// MARK: - FORMATTER

 let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

// MARK: - UI

var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.pink, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

// MARK: - UX

let feedback = UINotificationFeedbackGenerator()
