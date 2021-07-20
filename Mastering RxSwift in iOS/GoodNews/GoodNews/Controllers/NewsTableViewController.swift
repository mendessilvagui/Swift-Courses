//
//  NewsTableViewController.swift
//  GoodNews
//
//  Created by Guilherme on 15/07/21.
//

import UIKit
import RxSwift
import RxCocoa

class NewsTableViewController: UITableViewController {

    let disposeBag = DisposeBag()
    
    private var articles = [Article]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        populateNews()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    private func populateNews() {
        
        URLRequest.load(resource: ArticlesList.all)
            .subscribe(onNext: { [weak self] result in
                if let result = result {
                    self?.articles = result.articles
                    DispatchQueue.main.async {
                        self?.tableView.reloadData()
                    }
                }
            }).disposed(by: disposeBag)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleTableViewCell not found")
        }

        cell.titleLabel.text = articles[indexPath.row].title
        cell.descriptionLabel.text = articles[indexPath.row].description
        
        return cell
    }
}
