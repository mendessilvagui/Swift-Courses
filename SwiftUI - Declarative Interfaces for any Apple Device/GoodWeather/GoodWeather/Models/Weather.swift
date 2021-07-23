//
//  Weather.swift
//  GoodWeather
//
//  Created by Guilherme on 22/07/21.
//

import Foundation

struct WeatherResponse: Decodable {
    
    let main: Weather
}

struct Weather: Decodable {
    
    var temp: Double?
    var humidty: Double?
}
