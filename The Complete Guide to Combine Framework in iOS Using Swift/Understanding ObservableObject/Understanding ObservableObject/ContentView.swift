//
//  ContentView.swift
//  Understanding ObservableObject
//
//  Created by Guilherme on 20/07/21.
//

import SwiftUI

struct ContentView: View {
    
//    @ObservedObject var fancyTimer = FancyTimer()
    
    @ObservedObject var userSettings = UserSettings()
    
    var body: some View {
//        Text("\(self.fancyTimer.value)")
//            .font(.largeTitle)
//            .padding()
        VStack {
            Text("\(self.userSettings.score)")
                .font(.largeTitle)
            Button("Increment Score") {
                self.userSettings.score += 1
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
