//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by Guilherme on 16/07/21.
//

import Foundation
import RxSwift
import RxCocoa

struct  ArticleListViewModel {
    
    let articlesVM: [ArticleViewModel]
    
    init(_ articles: [Article]) {
        self.articlesVM = articles.compactMap(ArticleViewModel.init)
    }
    
    func articleAt(_ index: Int) -> ArticleViewModel {
        return self.articlesVM[index]
    }
}

struct ArticleViewModel {
    
    let article: Article
    
    init(_ article: Article) {
        self.article = article
    }
}

extension ArticleViewModel {
    
    var title: Observable<String> {
        return Observable<String>.just(article.title)
    }
    
    var description: Observable<String> {
        return Observable<String>.just(article.description ?? "")
    }
}
