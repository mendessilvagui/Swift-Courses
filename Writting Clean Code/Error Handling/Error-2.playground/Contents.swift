import UIKit

class Customer {
    var customerId: Int
    var name: String
    var dateUpdated: Date = Date()
    
    init(customerId: Int, name: String) {
        self.customerId = customerId
        self.name = name
    }
    
    func update() {
        self.dateUpdated = Date()
    }
}

class CustomerRepository {
    
    private func findById(customerId: Int) -> Customer? {
        
        if customerId % 2 == 0 {
            return Customer(customerId: customerId, name: "John Doe")
        }
        
        return nil
    }
    
    func getAll() -> [Customer] {
        
        var customers = [Customer]()
        customers = [Customer(customerId: 12, name: "John Doe"), Customer(customerId: 345, name: "Jane Doe")]
        return customers
    }
    
    func updateCustomer(customer: Customer?) {
        
        if let customer = customer {
         
            let persistedCustomer = findById(customerId: customer.customerId)
            if persistedCustomer != nil {
                persistedCustomer?.update()
            }
        }
    }
}

let repository = CustomerRepository()
let customers = repository.getAll()

customers.forEach {
    print($0)
}
