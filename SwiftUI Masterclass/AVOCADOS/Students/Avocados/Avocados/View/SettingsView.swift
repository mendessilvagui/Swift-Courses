//
//  SettingsView.swift
//  Avocados
//
//  Created by Guilherme Mendes on 15/06/21.
//

import SwiftUI

struct SettingsView: View {
   // MARK: - PROPERTIES
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
   
   // MARK: - BODY
   
    var body: some View {
        
        VStack(alignment: .center, spacing: 0, content: {
            VStack(alignment: .center, spacing: 5, content: {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                Text("Avocado".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            })
            .padding()
            
            Form {
                //MARK: - SECTION #1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification, label: {
                        Text("Enable notification")
                    })
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background refresh")
                    })
                }
                
                //MARK: - SECTION #2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(Color.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(Color.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Guilherme Mendes")
                        }
                        HStack {
                            Text("Designer").foregroundColor(Color.gray)
                            Spacer()
                            Text("Guilherme Mendes")
                        }
                        HStack {
                            Text("Website").foregroundColor(Color.gray)
                            Spacer()
                            Text("guimendes.com")
                        }
                        HStack {
                            Text("Version").foregroundColor(Color.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("👍 Happy Coding!")
                        }
                    }
                    
                }
            }
        })
        .frame(maxWidth: 640)
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
	static var previews: some View {
		SettingsView()
	}
}
