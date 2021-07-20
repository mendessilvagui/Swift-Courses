//
//  GuideView.swift
//  Honeymoon
//
//  Created by Guilherme on 06/07/21.
//

import SwiftUI

struct GuideView: View {
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                HeaderComponent()
                
                Spacer(minLength: 30)
                
                Text("Get started!")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                                    
                Text("Discover and pick the perfect destination for your romantic Honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 30)
                
                VStack(alignment: .leading, spacing: 25) {
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe right",
                        description: "Do you like this destination? Touch the sceen and swipe right. It will be saved to your favorites",
                        icon: "heart.circle")
                    
                    Spacer()
                    
                    GuideComponent(
                        title: "Dismiss",
                        subtitle: "Swipe left",
                        description: "Would you rather skip this place? Touch the screen ans swipe left. You will no longer see it.",
                        icon: "xmark.circle")
                    
                    Spacer()
                    
                    GuideComponent(
                        title: "Book",
                        subtitle: "Tap the button",
                        description: "Our selection of honeymoon resorts is perfect setting for you to embark your new life together.",
                        icon: "checkmark.square")
                }
                
                Spacer(minLength: 30)
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

//MARK: - PREVIEW

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
            .previewDevice("iPhone 11")
    }
}
