//
//  HikeDetailView.swift
//  Hiking
//
//  Created by Guilherme on 22/07/21.
//

import SwiftUI

struct HikeDetailView: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        VStack {
            Image(hike.imageURL)
                .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
                }
            
            Text(hike.name)
            Text(String(format: "%.1f", hike.miles) + " miles")
        }
        .navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetailView(hike: Hike(name: "Angels Landing", imageURL: "tam", miles: 10.0))
    }
}
