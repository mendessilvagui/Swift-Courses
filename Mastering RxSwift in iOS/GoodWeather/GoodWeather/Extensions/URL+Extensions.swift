//
//  URL+Extensions.swift
//  GoodWeather
//
//  Created by Guilherme on 15/07/21.
//

import Foundation

extension URL {
    
    static func urlForWeatherAPI(city: String) -> URL? {
        return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=1a217980c2fdc595c9c11a6bd4cc32ff&units=metric")
    }
}
