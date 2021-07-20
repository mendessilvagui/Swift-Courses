import UIKit

/*
class Sql {
    
    var table: String
    var columns: [String]
    
    init(table: String, columns: [String]) {
        self.table = table
        self.columns = columns
    }
    
    func create() -> String {
        return ""
    }
    
    func insert(fields: [AnyObject]) {

    }
    
    func selectAll() {
        
    }
}
*/

protocol Sql {
    func generate() -> String
}

class SqlBase {
    var table: String = ""
    var columns: [String] = [String]()
}

class InsertSQL: SqlBase, Sql {

    var values: [String] = [String]()
    
    init(table: String, columns: [String], values: [String]) {
        super.init()
        self.values = values
    }
    
    func generate() -> String {
        return "INSERT INTO \(self.table)(\(columns.joined(separator: ","))) VALUES(\(self.values.map {" '\($0)'"}.joined(separator: ",")))"
    }
}

class SelectWithCriteria: SqlBase, Sql {

    var criteria: String = ""
    
    init(table: String, columns: [String], criteria: String) {
        super.init()
        self.criteria = criteria
    }
    
    func generate() -> String {
      return ""
    }
}

func executeSql(sql: Sql) {
    let sqlAsString = sql.generate()
    // execute the sql
}

let insertSql = InsertSQL(table: "Customers", columns: ["firstName", "lastName"], values: ["John", "Doe"])

insertSql.generate()

executeSql(sql: insertSql)

executeSql(sql: SelectWithCriteria(table: "Customers", columns: ["firstName", "lastName"], criteria: "where customersId > 10"))
