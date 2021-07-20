import UIKit

enum EmployeeType {
    case hourly
    case commissioned
    case yearly
}

class Employee {
    var employeeId: String
    var employeeType: EmployeeType
    var basePay: Double = 20000
    
    init(employeeId: String, employeeType: EmployeeType) {
        self.employeeId = employeeId
        self.employeeType = employeeType
    }
}

//func calculatePay(employee: Employee) -> Double {
//
//    var amount: Double = 0.0
//
//    switch employee.employeeType {
//        case .commissioned:
//            amount = employee.basePay * 10
//        case .hourly:
//            amount = employee.basePay * 12
//    case .yearly:
//            amount = employee.basePay * 14
//    }
//
//    return amount
//}

func calculatePay(employee: Employee) -> Double {
    
    switch employee.employeeType {
        case .commissioned:
            return employee.basePay * 10
        case .hourly:
            return employee.basePay * 12
        case .yearly:
            return employee.basePay * 14
    }
}

//func calculateDensityString(source: String, endIndex: Int) -> String? {
//
//    if source.isEmpty {
//        return nil
//    }
//
//    for index in 0..<endIndex {
//        if index % 2 == 0 {
//            return source
//        }
//    }
//
//    if source.count > 5 {
//        return source
//    } else {
//        return nil
//    }
//}

func calculateDensityString(source: String, endIndex: Int) -> String? {
    
    var result: String? = ""
    
    if source.isEmpty {
        result = nil
    }
    
    for index in 0..<endIndex {
        if index % 2 == 0 {
            result = source
        }
    }
    
    if source.count > 5 {
        result = source
    } else {
        result = nil
    }
    
    return result
}

