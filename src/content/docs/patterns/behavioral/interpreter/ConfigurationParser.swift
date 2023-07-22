protocol ConfigurationExpression {
    func interpret() -> [String: Any]
}

class KeyExpression: ConfigurationExpression {
    private let key: String
    
    init(key: String) {
        self.key = key
    }
    
    func interpret() -> [String: Any] {
        return [key: true] // Simulated configuration retrieval based on key
    }
}

class ConfigurationParser {
    private let expression: ConfigurationExpression
    
    init(expression: ConfigurationExpression) {
        self.expression = expression
    }
    
    func parse() -> [String: Any] {
        return expression.interpret()
    }
}

// Usage
let keyExpression = KeyExpression(key: "debugMode")
let configurationParser = ConfigurationParser(expression: keyExpression)
let configuration = configurationParser.parse() // ["debugMode": true]
