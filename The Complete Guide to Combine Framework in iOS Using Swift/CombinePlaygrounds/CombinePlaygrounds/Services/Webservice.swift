//
//  Webservice.swift
//  CombinePlaygrounds
//
//  Created by Guilherme on 19/07/21.
//

import UIKit
import Combine


class Webservice {
    
    func getPosts() -> AnyPublisher<[Post], Error> {
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            fatalError("Invalid URL")
        }
        
        return URLSession.shared.dataTaskPublisher(for: url).map { $0.data }
            .decode(type: [Post].self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
        
    }
}
