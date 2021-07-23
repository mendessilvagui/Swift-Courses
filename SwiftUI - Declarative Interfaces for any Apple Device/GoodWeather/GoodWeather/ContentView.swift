//
//  ContentView.swift
//  GoodWeather
//
//  Created by Guilherme on 22/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherVM: WeatherViewModel
    
    init() {
        self.weatherVM = WeatherViewModel()
    }
    
    var body: some View {
        VStack(alignment: .center) {
            TextField( "Enter city name", text: self.$weatherVM.cityName, onCommit:  {
                self.weatherVM.search()
            })
            .font(.custom("Arial", size: 50))
            .multilineTextAlignment(.center)
            .padding()
            .fixedSize()
            
            Text(self.weatherVM.temperature)
                .font(.custom("Arial", size: 100))
                .foregroundColor(Color.white)
                .offset(y: 100)
                .padding()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
