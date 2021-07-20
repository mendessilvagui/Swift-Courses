//
//  ViewController.swift
//  WeatherApp
//
//  Created by Guilherme on 20/07/21.
//

import UIKit
import Combine

class ViewController: UIViewController {

    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    
    private var webservice = Webservice()
    private var cancellable: AnyCancellable?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpPublishers()
   
        /*
        self.cancellable = self.webservice.fetchWeather(city: "Londrina")
            .catch { _ in Just(Weather.placeholder) }
            .map { weather in
                if let temp = weather.temp {
                    return "\(temp) °C"
                } else {
                    return "Error getting weather"
                }
            }
            .assign(to: \.text, on: self.temperatureLabel)
         */
    }
    
    private func setUpPublishers() {
        
        let publisher = NotificationCenter.default.publisher(for: UITextField.textDidChangeNotification, object: self.cityTextField)
        
        self.cancellable = publisher.compactMap {
            ($0.object as! UITextField).text?.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
            }
            .debounce(for: .milliseconds(500), scheduler: RunLoop.main)
            .flatMap { city in
                return self.webservice.fetchWeather(city: city)
                    .catch { _ in Just(Weather.placeholder) }
                    .map { $0 }
            }
            .sink {
                if let temp = $0.temp {
                    self.temperatureLabel.text = "\(temp) °C"
                } else {
                    self.temperatureLabel.text = ""
                }
            }
    }
}

