import UIKit
import Combine

//MARK: - min and max

/*
let publisher = [1,-45,3,45,100].publisher

publisher.min()
    .sink {
        print($0)
    }

publisher.max()
    .sink {
        print($0)
    }
*/

//MARK: - first and last

/*
let publisher = ["A","B","C","D"].publisher

publisher.first()
    .sink {
        print($0)
    }

publisher.first(where: { "Cat".contains($0) })
    .sink {
        print($0)
    }

publisher.last()
    .sink {
        print($0)
    }
*/

//MARK: - otuput

/*
let publisher = ["A","B","C","D"].publisher

publisher.output(at: 2)
    .sink {
        print($0)
    }

publisher.output(in: (0...2))
    .sink {
        print($0)
    }
*/

//MARK: - count

/*
let publisher = ["A","B","C","D"].publisher
let publisher1 = PassthroughSubject<Int, Never>()

publisher.count()
    .sink {
        print($0)
    }

publisher1.count()
    .sink {
        print($0)
    }

publisher1.send(10)
publisher1.send(10)
publisher1.send(10)
publisher1.send(10)
publisher1.send(completion: .finished)
*/

//MARK: - contains

/*
let publisher = ["A","B","C","D"].publisher

publisher.contains("F")
    .sink {
        print($0)
    }
*/

//MARK: - allSatisfy

/*
let publisher = [1,2,3,4,5,6,7].publisher

publisher.allSatisfy { $0 % 2 == 0 }
    .sink { allEven in
        print(allEven)
    }
*/

//MARK: - reduce

let publisher = [1,2,3,4,5,6,7].publisher

publisher.reduce(0) { accumulator, value in
    print("accumulator: \(accumulator) and the value is \(value)")
    return accumulator + value
}.sink {
    print($0)
}
