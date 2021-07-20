import UIKit
import Combine

//MARK: - Printing events

/*
let publisher = (1...20).publisher

publisher
    .print("Debugging")
    .sink {
    print($0)
}
*/

//MARK: - Acting on events

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid URL")
}

let request = URLSession.shared.dataTaskPublisher(for: url)

let subscription = request
    .handleEvents(receiveSubscription: { _ in print("Subscription Received") }, receiveOutput: { _, _ in print("Received Output")}, receiveCompletion: { _ in print("Received Completion")}, receiveCancel: { print("Received Cancel")}, receiveRequest: { _ in print("Received Request")})
    .sink {
    print($0)
} receiveValue: { data, response in
    print(data)
}

