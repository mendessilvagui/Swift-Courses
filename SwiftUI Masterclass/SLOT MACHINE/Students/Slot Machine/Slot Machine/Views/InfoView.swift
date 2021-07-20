//
//  InfoView.swift
//  Slot Machine
//
//  Created by Guilherme on 02/07/21.
//

import SwiftUI

struct InfoView: View {
    
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPhone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Guilherme Mendes")
                    FormRowView(firstItem: "Designer", secondItem: "Robert Petras")
                    FormRowView(firstItem: "Music", secondItem: "Dan Lebowitz")
                    FormRowView(firstItem: "Website", secondItem: "swiftuimasterclass.com")
                    FormRowView(firstItem: "Copyright", secondItem: "© 2021 All rights reserved.")
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")
                }
            }
            .font(.system(.body, design: .rounded))
        })
        .padding(.top, 40)
        .overlay(
            Button(action: {
                audioPlayer?.stop()
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark.circle")
                    .font(.title)
            })
            .padding(.top, 30)
            .padding(.trailing, 20)
            .accentColor(Color.secondary)
            , alignment: .topTrailing
        )
        .onAppear(perform: {
            playSound(sound: "background-music", type: "mp3")
        })
    }
}

struct FormRowView: View {
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem)
                .foregroundColor(Color.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

//MARK: - PREVIEW

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

