protocol BooleanExpression {
    func interpret() -> Bool
}

class ConstantExpression: BooleanExpression {
    private let value: Bool
    
    init(value: Bool) {
        self.value = value
    }
    
    func interpret() -> Bool {
        return value
    }
}

class AndExpression: BooleanExpression {
    private let leftExpression: BooleanExpression
    private let rightExpression: BooleanExpression
    
    init(leftExpression: BooleanExpression, rightExpression: BooleanExpression) {
        self.leftExpression = leftExpression
        self.rightExpression = rightExpression
    }
    
    func interpret() -> Bool {
        return leftExpression.interpret() && rightExpression.interpret()
    }
}

// Usage
let expression = AndExpression(leftExpression: ConstantExpression(value: true), rightExpression: ConstantExpression(value: false))
let result = expression.interpret() // false
