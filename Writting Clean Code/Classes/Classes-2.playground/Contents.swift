import UIKit

class Customer {
    
    private var isManager: Bool = false
    
    var customerId: String?
    var firstName: String
    var middleName: String?
    var lastName: String
    var address: Address?
    
    init(firstName: String, middleName: String? = nil, lastName: String) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
    }
    
    func setAddress(address: Address) {
        self.address = address
    }
    
    static func ById(id: String) -> Customer? {
        return nil
    }
    
    func save() {
        
    }
    
    func delete() {
        
    }
}

Customer.ById(id: "234")

let customer = Customer(firstName: "John", lastName: "Doe")

class Address {
    
    var street: String
    var city: String
    var state: String
    var zipCode: String
    
    init(street: String, city: String, state: String, zipCode: String) {
        self.street = street
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
    
    func setAddress(street: String, city: String, state: String, zipCode: String) {
        self.street = street
        self.city = city
        self.state = state
        self.zipCode = zipCode
    }
}
