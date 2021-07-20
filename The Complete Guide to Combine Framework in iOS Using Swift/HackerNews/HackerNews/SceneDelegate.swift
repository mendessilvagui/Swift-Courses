//
//  SceneDelegate.swift
//  HackerNews
//
//  Created by Guilherme on 20/07/21.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        let storyListView = StoryListView()

        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: storyListView)
            self.window = window
            window.makeKeyAndVisible()
            
            if #available(iOS 13.0, *) {
                window.overrideUserInterfaceStyle = .light
                
                let navBarAppearance = UINavigationBarAppearance()
                let navBarBackgroundColor = UIColor(displayP3Red: 52/255, green: 152/255, blue: 219/255, alpha: 1.0)
                
                navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
                navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
                navBarAppearance.backgroundColor = navBarBackgroundColor
                
                UINavigationBar.appearance().standardAppearance = navBarAppearance
                UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
                UINavigationBar.appearance().tintColor = UIColor.white
            
            }
        }
    }
}

