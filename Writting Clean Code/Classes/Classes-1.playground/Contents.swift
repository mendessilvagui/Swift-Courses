import UIKit

class Customer {
    
    private var isManager: Bool = false
    
    var firstName: String
    var middleName: String?
    var lastName: String
    
    init(firstName: String, middleName: String? = nil, lastName: String) {
        self.firstName = firstName
        self.middleName = middleName
        self.lastName = lastName
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
