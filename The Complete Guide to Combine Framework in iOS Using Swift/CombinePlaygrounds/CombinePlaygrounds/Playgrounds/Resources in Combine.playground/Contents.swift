import UIKit
import Combine

//MARK: - Understanding the problem

/*
guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid URL")
}

let request = URLSession.shared.dataTaskPublisher(for: url).map(\.data).print()

let subscription1 = request.sink(receiveCompletion: { _ in}, receiveValue: {
    print($0)
})

let subscription2 = request.sink(receiveCompletion: { _ in}, receiveValue: {
    print($0)
})
*/

//MARK: - share

/*
var subscription3: AnyCancellable? = nil

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid URL")
}

let request = URLSession.shared.dataTaskPublisher(for: url).map(\.data).print().share()
let subscription1 = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print($0)
})

let subscription2 = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print($0)
})

DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
    subscription3 = request.sink(receiveCompletion: { _ in }, receiveValue: {
        print($0)
    })
}
*/

//MARK: - multicast

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid URL")
}

let subject = PassthroughSubject<Data, URLError>()
var cancellables: Set<AnyCancellable> = []

let request = URLSession.shared.dataTaskPublisher(for: url).map(\.data).print().multicast(subject: subject)

let subscription1: () = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print($0)
})
.store(in: &cancellables)


let subscription2: () = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print($0)
})
.store(in: &cancellables)


let subscription3: () = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print($0)
})
.store(in: &cancellables)

request.connect().store(in: &cancellables)
