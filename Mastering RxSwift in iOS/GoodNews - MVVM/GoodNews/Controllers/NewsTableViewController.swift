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
    
    private var articlesListVM: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        populateNews()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    private func populateNews() {
        
        URLRequest.load(resource: ArticlesList.all)
            .subscribe(onNext: { articleList in
              
                let articles = articleList.articles
                self.articlesListVM = ArticleListViewModel(articles)
                    
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }

                
            }).disposed(by: disposeBag)
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articlesListVM == nil ? 0 : self.articlesListVM.articlesVM.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleTableViewCell not found")
        }
        
        let articleVM = self.articlesListVM.articleAt(indexPath.row)

        articleVM.title.asDriver(onErrorJustReturn: "")            .drive(cell.titleLabel.rx.text)
            .disposed(by: disposeBag)
        
        articleVM.description.asDriver(onErrorJustReturn: "")            .drive(cell.descriptionLabel.rx.text)
            .disposed(by: disposeBag)
        
        return cell
    }
}
