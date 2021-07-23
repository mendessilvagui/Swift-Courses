//
//  FancyScoreView.swift
//  Understanding ObservableObject
//
//  Created by Guilherme on 21/07/21.
//

import SwiftUI

struct FancyScoreView: View {
    
    @EnvironmentObject var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
            
            Button("Increment Score") {
                self.userSettings.score += 1
            }
            .padding()
            .background(Color.purple)
        }
        .padding()
        .background(Color.blue)
    }
}

struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
    }
}
