//
//  CenterModifier.swift
//  Africa
//
//  Created by Guilherme Mendes on 09/06/21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
