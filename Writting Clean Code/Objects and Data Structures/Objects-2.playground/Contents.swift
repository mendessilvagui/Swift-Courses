import UIKit

/*
class Square {
    let width: Double
    
    init(width: Double) {
        self.width = width
    }
}

class Circle {
    let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
}

enum ShapeError: Error {
    case noShape(String)
}

class Geometry {
    
    func circumferences(shape: AnyObject) -> Double {
        return 1.0
    }
    
    func area(shape: AnyObject) throws -> Double {
        
        if shape is Square {
            let square = shape as! Square
            return pow(square.width,2)
        } else if shape is Circle {
            let circle = shape as! Circle
            return Double.pi * pow(circle.radius,2)
        }
        
        throw ShapeError.noShape("no such shape exists!")
    }
}

do {
    try Geometry().area(shape: Circle(radius: 20))
} catch ShapeError.noShape(let errorMessage) {
    print(errorMessage)
}
*/

protocol Shape {
    func area() -> Double
}

struct Circle: Shape {
    
    let radius: Double
    
    func area() -> Double {
        return Double.pi * pow(radius, 2)
    }
}

struct Square: Shape {
    
    let width: Double
    
    func area() -> Double {
        return  pow(width, 2)
    }
}

