protocol SQLExpression {
    func interpret() -> String
}

class ColumnExpression: SQLExpression {
    private let columnName: String
    
    init(columnName: String) {
        self.columnName = columnName
    }
    
    func interpret() -> String {
        return columnName
    }
}

class SelectExpression: SQLExpression {
    private let columns: [SQLExpression]
    private let tableName: String
    
    init(columns: [SQLExpression], tableName: String) {
        self.columns = columns
        self.tableName = tableName
    }
    
    func interpret() -> String {
        let columnNames = columns.map { $0.interpret() }.joined(separator: ", ")
        return "SELECT \(columnNames) FROM \(tableName)"
    }
}

// Usage
let column1 = ColumnExpression(columnName: "name")
let column2 = ColumnExpression(columnName: "age")

let selectExpression = SelectExpression(columns: [column1, column2], tableName: "users")
let sqlQuery = selectExpression.interpret() // "SELECT name, age FROM users"
