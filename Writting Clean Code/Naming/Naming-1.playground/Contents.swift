import UIKit

var published: Bool = false

let theList = [["title": "Writting Clean Code", "published": "true"], ["title": "Introduction to 35", "published": "false"]]

func getThem() -> [[String: String]] {
    var list1 = [[String: String]]()
    
    for i in theList {
        if i["published"] == "true" {
            list1.append(i)
        }
    }
    
    return list1
}

///////////////////////////////////////////////////////

struct Article {
    let title: String
    let published: Bool
}

let articles = [Article(title: "Writting Clean Code", published: true), Article(title: "Introduction to 35", published: false)]

func getPublishedArticles() -> [Article] {
    articles.filter { $0.published }
}

print(getPublishedArticles())
