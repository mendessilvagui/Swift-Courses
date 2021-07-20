import UIKit
import Combine

//MARK: - prepend

/*
let numbers = (1...5).publisher
let publisher2 = (500...510).publisher

numbers.prepend(100,101)
    .prepend(-1,-2)
    .prepend([45,67])
    .prepend(publisher2)
    .sink {
        print($0)
    }
*/

//MARK: - append

/*
let numbers = (1...10).publisher
let publisher2 = (500...510).publisher

numbers.append(11,12)
    .append(publisher2)
    .sink {
        print($0)
    }
*/

//MARK: - switchToLatest

/*
let publisher1 = PassthroughSubject<String, Never>()
let publisher2 = PassthroughSubject<String, Never>()

let publishers = PassthroughSubject<PassthroughSubject<String, Never>, Never>()

publishers.switchToLatest()
    .sink {
        print($0)
    }

publishers.send(publisher1)

publisher1.send("Publisher 1 - Value 1")
publisher1.send("Publisher 1 - Value 2")

publishers.send(publisher2)

publisher2.send("Publisher 2 - Value 1")

publisher1.send("Publisher 1 - Value 3")
*/

/*
let images = ["houston","denver","seatle"]
var index = 0

func getImage() -> AnyPublisher<String?, Never> {
    
    return Future<String?,Never> { promise in
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 3.0) {
            promise(.success(images[index]))
        }
    }.print().map { $0 }
    .receive(on: RunLoop.main)
    .eraseToAnyPublisher()
}

let taps = PassthroughSubject<Void, Never>()

let subscription = taps.map { _ in getImage() }
    .switchToLatest()
    .sink {
        print($0 ?? "")
    }

// houston
taps.send()

// denver
DispatchQueue.main.asyncAfter(deadline: .now() + 6.0) {
    index += 1
    taps.send()
}

// seatle
DispatchQueue.main.asyncAfter(deadline: .now() + 6.5) {
    index += 1
    taps.send()
}
*/

//MARK: - merge

/*
let publisher1 = PassthroughSubject<Int, Never>()
let publisher2 = PassthroughSubject<Int, Never>()

publisher1.merge(with: publisher2)
    .sink {
        print($0)
    }

publisher1.send(10)
publisher1.send(11)

publisher2.send(12)
publisher2.send(13)
*/

//MARK: - combineLatest

/*
let publisher1 = PassthroughSubject<Int, Never>()
let publisher2 = PassthroughSubject<String, Never>()

publisher1.combineLatest(publisher2)
    .sink {
        print("P1: \($0), P2: \($1)")
    }

publisher1.send(1)
publisher2.send("A")
publisher2.send("B")
*/

//MARK: - zip

let publisher1 = PassthroughSubject<Int, Never>()
let publisher2 = PassthroughSubject<String, Never>()

publisher1.zip(publisher2)
    .sink {
        print("P1: \($0), P2: \($1)")
    }

publisher1.send(1)
publisher2.send("A")
publisher2.send("B")
publisher1.send(2)
