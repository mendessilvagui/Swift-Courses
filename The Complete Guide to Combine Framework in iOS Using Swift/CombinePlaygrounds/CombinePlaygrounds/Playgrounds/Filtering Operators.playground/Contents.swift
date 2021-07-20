import UIKit
import Combine


//MARK: - filter

/*
let numbers = (1...20).publisher

numbers.filter { $0 % 2 == 0 }
    .sink {
        print($0)
    }
*/

//MARK: - removeDuplicates

/*
let words = "apple apple apple fruit fruit apple mango watermelon apple".components(separatedBy: " ").publisher

words
    .removeDuplicates()
    .sink {
    print($0)
}
*/

//MARK: - compactMap

/*
let strings = ["a","1.24","b","3.45","6.7"].publisher
    .compactMap { Float($0) }
    .sink {
    print($0)
}
*/

//MARK: - ignoreOutput

/*
let numbers = (1...5000).publisher

numbers
    .ignoreOutput()
    .sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })
*/

//MARK: - first

/*
let numbers = (1...9).publisher

numbers.first(where: { $0 % 2 == 0 })
    .sink {
        print($0)
    }
*/

//MARK: - last

/*
let numbers = (1...9).publisher

numbers.last(where: { $0 % 2 == 0 })
    .sink {
        print($0)
    }
*/

//MARK: - dropFirst

/*
let numbers = (1...9).publisher

numbers.dropFirst(5)
    .sink {
        print($0)
    }
*/

//MARK: - dropWhile

/*
let numbers = (1...10).publisher

numbers.drop(while: { $0 % 3 != 0 } )
    .sink {
        print($0)
    }
*/

//MARK: - dropUntilOutputFrom

/*
let isReady = PassthroughSubject<Void, Never>()
let taps = PassthroughSubject<Int, Never>()

taps.drop(untilOutputFrom: isReady)
    .sink {
        print($0)
    }

(1...10).forEach { n in
    taps.send(n)
    
    if n == 3 {
        isReady.send()
    }
}
*/

//MARK: - prefix

/*
let numbers = (1...10).publisher

numbers.prefix(2)
    .sink {
        print($0)
    }

numbers.prefix(while: { $0 < 3 })
    .sink {
        print($0)
    }
*/

//MARK: - Challenge: Filter all the things

let numbers = (1...100).publisher

numbers
    .dropFirst(50)
    .prefix(20)
    .filter { $0 % 2 == 0 }
    .sink {
        print($0)
    }



