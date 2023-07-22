// AuthenticationHandler protocol
protocol AuthenticationHandler {
    var nextHandler: AuthenticationHandler? { get set }
    func authenticate(credentials: Credentials) -> Bool
}

// Credentials struct
struct Credentials {
    let username: String
    let password: String
}

// Concrete handler 1 - Username and Password authentication
class UsernamePasswordAuthenticationHandler: AuthenticationHandler {
    var nextHandler: AuthenticationHandler?
    
    func authenticate(credentials: Credentials) -> Bool {
        if isValidUsernamePassword(username: credentials.username, password: credentials.password) {
            print("Username and Password authentication successful.")
            return true
        } else if let nextHandler = self.nextHandler {
            return nextHandler.authenticate(credentials: credentials)
        } else {
            print("Authentication failed.")
            return false
        }
    }
    
    private func isValidUsernamePassword(username: String, password: String) -> Bool {
        // Simulated validation logic
        return username == "admin" && password == "admin123"
    }
}

// Concrete handler 2 - API Key authentication
class ApiKeyAuthenticationHandler: AuthenticationHandler {
    var nextHandler: AuthenticationHandler?
    
    func authenticate(credentials: Credentials) -> Bool {
        if isValidApiKey(apiKey: credentials.username) {
            print("API Key authentication successful.")
            return true
        } else if let nextHandler = self.nextHandler {
            return nextHandler.authenticate(credentials: credentials)
        } else {
            print("Authentication failed.")
            return false
        }
    }
    
    private func isValidApiKey(apiKey: String) -> Bool {
        // Simulated validation logic
        return apiKey == "myApiKey"
    }
}

// Concrete handler 3 - Token authentication
class TokenAuthenticationHandler: AuthenticationHandler {
    var nextHandler: AuthenticationHandler?
    
    func authenticate(credentials: Credentials) -> Bool {
        if isValidToken(token: credentials.username) {
            print("Token authentication successful.")
            return true
        } else if let nextHandler = self.nextHandler {
            return nextHandler.authenticate(credentials: credentials)
        } else {
            print("Authentication failed.")
            return false
        }
    }
    
    private func isValidToken(token: String) -> Bool {
        // Simulated validation logic
        return token == "myToken"
    }
}

// Usage
let usernamePasswordHandler = UsernamePasswordAuthenticationHandler()
let apiKeyHandler = ApiKeyAuthenticationHandler()
let tokenHandler = TokenAuthenticationHandler()

usernamePasswordHandler.nextHandler = apiKeyHandler
apiKeyHandler.nextHandler = tokenHandler

// Attempting authentication
let credentials1 = Credentials(username: "admin", password: "admin123")
let authenticationResult1 = usernamePasswordHandler.authenticate(credentials: credentials1)
print("Authentication Result: \(authenticationResult1)")

let credentials2 = Credentials(username: "myApiKey", password: "")
let authenticationResult2 = usernamePasswordHandler.authenticate(credentials: credentials2)
print("Authentication Result: \(authenticationResult2)")

let credentials3 = Credentials(username: "myToken", password: "")
let authenticationResult3 = usernamePasswordHandler.authenticate(credentials: credentials3)
print("Authentication Result: \(authenticationResult3)")

let invalidCredentials = Credentials(username: "invalid", password: "invalid")
let authenticationResult4 = usernamePasswordHandler.authenticate(credentials: invalidCredentials)
print("Authentication Result: \(authenticationResult4)")
