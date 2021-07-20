import UIKit

class Customer {
    
    func save() {
        
    }
    
    func markAbsent() {
        
    }
}
// Always use singular to name classes

class Account {
    
}

class Task {
    var title: String
    
    init(title: String) {
        self.title = title
    }
}

//class CustomerRepository {
//
//    func fetchCustomers() {
//
//    }
//}

class CustomerRepository {
    
    func getAll() -> [Customer] {
        return [Customer]()
    }
}

class AccountRepository {
    
    func getAccounts() {
        
    }
}

class AddressRepository {
    
    func retrieveAddresses() {
        
    }
}

// fetch, get and retreive have the same meaning, so choose one and keep the pattern throghout the project

