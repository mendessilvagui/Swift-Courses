import UIKit
import Combine

//MARK: - collect

/*
["A","B","C","D","E"].publisher.collect(3).sink {
    print($0)
}
 */

//MARK: - map

/*
let formatter = NumberFormatter()
formatter.numberStyle = .spellOut

[123,45,67].publisher.map {
    formatter.string(from: NSNumber(integerLiteral: $0)) ?? ""
}.sink {
    print($0)
}
*/

//MARK: - map KeyPath

/*
struct Point {
    let x: Int
    let y: Int
}

let publisher = PassthroughSubject<Point, Never>()

publisher.map(\.x, \.y).sink { x, y in
    print("x is \(x) and y is \(y)")
}

publisher.send(Point(x: 2, y: 10))
*/

//MARK: - flatMap

/*
struct School {
    let name: String
    let noOfStudents: CurrentValueSubject<Int,Never>
    
    init(name: String, noOfStudents: Int) {
        self.name = name
        self.noOfStudents = CurrentValueSubject(noOfStudents)
    }
}

let citySchool = School(name: "Fountain Head School", noOfStudents: 100)

let school = CurrentValueSubject<School,Never>(citySchool)

school
    .flatMap {
        $0.noOfStudents
    }
    .sink {
    print($0)
}

let townSchool = School(name: "Town Head School", noOfStudents: 45)

school.value = townSchool

citySchool.noOfStudents.value += 1
townSchool.noOfStudents.value += 10
*/

//MARK: - replaceNil

/*
["A","B",nil,"C"].publisher.replaceNil(with: "*")
    .map { $0! }
    .sink {
        print($0)
    }
*/

//MARK: - replaceEmpty

/*
let empty = Empty<Int, Never>()

empty
    .replaceEmpty(with: 1)
    .sink(receiveCompletion: { print($0) }, receiveValue: { print($0) })
*/

//MARK: - scan

let publisher = (1...10).publisher

publisher.scan([]) { numbers, value -> [Int] in
    numbers + [value]
}.sink {
    print($0)
}
