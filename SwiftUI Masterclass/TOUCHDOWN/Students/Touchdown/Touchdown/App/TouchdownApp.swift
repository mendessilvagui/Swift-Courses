//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Guilherme Mendes on 09/06/21.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
