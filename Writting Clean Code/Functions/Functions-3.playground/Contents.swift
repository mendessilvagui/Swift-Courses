import UIKit

//struct Circle {
//    let x: CGFloat
//    let y: CGFloat
//    let radius: CGFloat
//}
//
//func makeCircle(x: CGFloat, y: CGFloat, radius: CGFloat) -> Circle {
//    return Circle(x: x, y: y, radius: radius)
//}

struct Circle {
    let point: CGPoint
    let radius: CGFloat
}

func makeCircle(point: CGPoint, radius: CGFloat) -> Circle {
    return Circle(point: point, radius: radius)
}

//func calculateBetweenAddress(street1: String, city1: String, state1: String, street2: String, city2: String, statet2: String) {
//
//}

struct Address {
    let street: String
    let city: String
    let state: String
    let zipCode: String
}

func calculateBetweenAddress(startAddress: Address, endAddress: Address) {
    
}

struct User {
    let username: String
    let password: String
}

class UserService {
    
    func findByName(username: String) -> User {
        return User(username: "johndoe", password: "password")
    }
}

func checkPassword(username: String, password: String) -> Bool {
    var validPassword: Bool = false
    
    let user = UserService().findByName(username: username)
    if(user.password == password) {
        validPassword = true
        // UserSession.initialize() // SIDE EFFECT
    }
    
    
    return validPassword
}
