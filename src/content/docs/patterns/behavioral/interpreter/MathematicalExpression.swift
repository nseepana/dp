protocol Expression {
    func interpret() -> Int
}

class NumberExpression: Expression {
    private let value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    func interpret() -> Int {
        return value
    }
}

class AdditionExpression: Expression {
    private let leftExpression: Expression
    private let rightExpression: Expression
    
    init(leftExpression: Expression, rightExpression: Expression) {
        self.leftExpression = leftExpression
        self.rightExpression = rightExpression
    }
    
    func interpret() -> Int {
        return leftExpression.interpret() + rightExpression.interpret()
    }
}

// Usage
let expression = AdditionExpression(leftExpression: NumberExpression(value: 5), rightExpression: AdditionExpression(leftExpression: NumberExpression(value: 2), rightExpression: NumberExpression(value: 3)))
let result = expression.interpret() // 10
