//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Guilherme Mendes on 07/06/21.
//

import SwiftUI

struct SourceLinkView: View {
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        } //: BOX
    }
}
// MARK: - PREVIEW

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
