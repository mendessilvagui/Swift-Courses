import UIKit

struct Post: Codable {
    let id: Int
    let title: String
    let body: String
}

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/1") else {
    fatalError("URL is not defined!")
}

URLSession.shared.dataTask(with: url) { data, response, error in
    
    if let data = data {
        
        let post = try? JSONDecoder().decode(Post.self, from: data)
        if let post = post {
            print(post)
        }
    }
}.resume()
