//
//  Constants.swift
//  WeatherApp
//
//  Created by Guilherme on 20/07/21.
//

import Foundation

struct Constants {
    
    struct URLs {
        
        static func weather(city: String) -> String {
            return "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=1a217980c2fdc595c9c11a6bd4cc32ff&units=metric"
        }
    }
}
