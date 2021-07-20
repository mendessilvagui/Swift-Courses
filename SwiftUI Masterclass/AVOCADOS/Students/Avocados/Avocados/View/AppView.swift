//
//  AppView.swift
//  Avocados
//
//  Created by Guilherme Mendes on 15/06/21.
//

import SwiftUI

struct AppView: View {
   // MARK: - PROPERTIES
   
   // MARK: - BODY

	var body: some View {
		TabView {
			AvocadosView()
				.tabItem({
					Image("tabicon-branch")
					Text("Avocados")
				})
			ContentView()
				.tabItem({
					Image("tabicon-book")
					Text("Recipes")
				})
			RipeningStagesView()
				.tabItem({
					Image("tabicon-avocado")
					Text("Ripening")
				})
			SettingsView()
				.tabItem({
					Image("tabicon-settings")
					Text("Settings")
				})
		}
		.accentColor(Color.primary)
	}
}

// MARK: - PREVIEW

struct AppView_Previews: PreviewProvider {
	static var previews: some View {
		AppView()
	}
}
