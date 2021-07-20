import UIKit

struct ReqRec102 {
    var stD: Date
    var enD: Date
    var orDetls: String
}

struct Requisition {
    var startDate: Date
    var endDate: Date
    var details: String
    var orderedBy: String
}

let hourSalary = 50000 / (40 * 52)

let AVERAGE_SALARIED_HOURS: Double = 2080

func calculateHourlyFromYearly(yearlySalary: Double) -> Double {
    return yearlySalary / AVERAGE_SALARIED_HOURS
}
