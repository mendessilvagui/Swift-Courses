import UIKit

protocol Shape {
    func calculateArea() -> Double
}

struct Circle: Shape {
    let radius: Double
    
    func calculateArea() -> Double {
        return Double.pi * (radius * radius)
    }
}

struct Square: Shape {
    let width: Double
    
    func calculateArea() -> Double {
        return width * width
    }
}

func displayArea(shapes: [Shape]) {
    for shape in shapes {
        let area = shape.calculateArea()
        print(area)
    }
}

displayArea(shapes: [Circle(radius: 10), Square(width: 20)])

/*
class Vehicle {
    func getFuelTankCapacityInGallons() -> Double {
        return 10.0
    }
    func getGallonsOfGasoline() -> Double {
        return 1.0
    }
} */

protocol Vehicle {
    func getPercentFuelRemaining() -> Double
    
}

func calculateRange(vehicle: Vehicle) -> Double {
    return 10.0 * vehicle.getPercentFuelRemaining()
}
