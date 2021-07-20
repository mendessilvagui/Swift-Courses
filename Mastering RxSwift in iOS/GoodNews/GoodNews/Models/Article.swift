//
//  Article.swift
//  GoodNews
//
//  Created by Guilherme on 15/07/21.
//

import Foundation

struct ArticlesList: Decodable {
    var articles: [Article]
}

extension ArticlesList {
    
    static var all: Resource<ArticlesList> = {
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=46878554d00443f2b09b2c85b52d3628")!
        return Resource(url: url)
    }()
}

struct Article: Decodable {
    let title: String
    let description: String?
}
