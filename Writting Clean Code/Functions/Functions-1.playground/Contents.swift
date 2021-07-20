import UIKit
import PlaygroundSupport

struct Post: Decodable {
    let id: Int
    let title: String
    let body: String
}

enum NetworkError: Error {
    case badURL
    case decodingError
    case noData
}

func fetchPost(postId: Int, completion: @escaping (Result<Post, NetworkError>) -> Void) {
    
    guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts/\(postId)") else {
        completion(.failure(.badURL))
        return
    }
    
    URLSession.shared.dataTask(with: url) { data, response, error in
        
        guard let data = data, error == nil else {
            completion(.failure(.noData))
            return
        }
        
        let post = try? JSONDecoder().decode(Post.self, from: data)
        
        if let post = post {
            DispatchQueue.main.async {
                completion(.success(post))
            }
        } else {
            completion(.failure(.decodingError))
        }
    }.resume()
}

//func fetchPost(postId: Int) {
//
//    let url = URL(string: "https://jsonplaceholder.typicode.com/posts/\(postId)")!
//
//    URLSession.shared.dataTask(with: url) { (data, response, error) in
//
//        if let data = data {
//            print(data)
//            let post = try? JSONDecoder().decode(Post.self, from: data)
//            if let post = post {
//
//                DispatchQueue.main.async {
//                    let titleLabel = UILabel(frame: CGRect(origin: CGPoint(x: 20, y: 10), size: CGSize(width: 300, height: 44)))
//                    titleLabel.text = post.title
//                    titleLabel.lineBreakMode = .byWordWrapping
//                    titleLabel.numberOfLines = 0
//                    titleLabel.textColor = UIColor.white
//                    vc.view.addSubview(titleLabel)
//                }
//            }
//        }
//    }.resume()
//}

func displayPost(post: Post) {
    
    let titleLabel = UILabel(frame: CGRect(origin: CGPoint(x: 20, y: 10), size: CGSize(width: 300, height: 44)))
    titleLabel.text = post.title
    titleLabel.lineBreakMode = .byWordWrapping
    titleLabel.numberOfLines = 0
    titleLabel.textColor = UIColor.white
    vc.view.addSubview(titleLabel)
}

let rect = CGRect(origin: CGPoint.zero, size: CGSize(width: 320, height: 480))
let vc = UIViewController()
vc.view.frame = rect
vc.view.backgroundColor = UIColor.orange

fetchPost(postId: 1) { result in
    switch result {
    case .success(let post):
        displayPost(post: post)
    case .failure(let error):
        print(error.localizedDescription)
    }
}

//fetchPost(postId: 1)

PlaygroundSupport.PlaygroundPage.current.liveView = vc.view
