import UIKit

class Customer {
    // private var _firstName: String
    // private var _lastName: String
    // In Swift the particle "_" is not necessary, but in other languages like Dart it means "private"
    private var firstName: String
    private var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

protocol Shape {}

struct Circle: Shape {}

struct Rectangle: Shape {}

protocol Decoder {
    func decode()
}

class JSONDecoder: Decoder {
    func decode() {
        
    }
}

class BinaryDecoder: Decoder {
    func decode() {
        
    }
}

protocol HttpClient {
    
}

class HttpClientImpl: HttpClient {
    
}


