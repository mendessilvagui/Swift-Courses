//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Guilherme on 06/07/21.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}
