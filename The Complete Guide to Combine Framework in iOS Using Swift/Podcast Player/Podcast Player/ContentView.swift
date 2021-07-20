//
//  ContentView.swift
//  Podcast Player
//
//  Created by Guilherme on 20/07/21.
//

import SwiftUI

struct ContentView: View {
    
    let episode = Episode(name: "Mackbreak Weekly", track: "WWDC 2019")
    
    @State private var isPlaying = false
    
    var body: some View {
        
        VStack {
            Text(self.episode.name)
                .font(.title)
                .foregroundColor(self.isPlaying ? .green : .black)
                .padding()
            
            Text(self.episode.track)
                .foregroundColor(.secondary)
            
            PlayButton(isPlaying: $isPlaying)
        }
    }
}

struct PlayButton: View {
    
    @Binding var isPlaying: Bool
    
    var body: some View {
        
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play")
        }
        .padding(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
