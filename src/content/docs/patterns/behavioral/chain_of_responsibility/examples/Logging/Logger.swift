// Logger protocol
protocol Logger {
    var nextLogger: Logger? { get set }
    func logMessage(level: LogLevel, message: String)
}

// Log levels
enum LogLevel {
    case info
    case warning
    case error
}

// Concrete logger 1
class ConsoleLogger: Logger {
    var nextLogger: Logger?
    
    func logMessage(level: LogLevel, message: String) {
        if level == .info {
            print("[ConsoleLogger] Info: \(message)")
        } else if let nextLogger = self.nextLogger {
            nextLogger.logMessage(level: level, message: message)
        }
    }
}

// Concrete logger 2
class FileLogger: Logger {
    var nextLogger: Logger?
    
    func logMessage(level: LogLevel, message: String) {
        if level == .warning {
            print("[FileLogger] Warning: \(message)")
        } else if let nextLogger = self.nextLogger {
            nextLogger.logMessage(level: level, message: message)
        }
    }
}

// Concrete logger 3
class EmailLogger: Logger {
    var nextLogger: Logger?
    
    func logMessage(level: LogLevel, message: String) {
        if level == .error {
            print("[EmailLogger] Error: \(message)")
        } else if let nextLogger = self.nextLogger {
            nextLogger.logMessage(level: level, message: message)
        }
    }
}

// Usage
let consoleLogger = ConsoleLogger()
let fileLogger = FileLogger()
let emailLogger = EmailLogger()

consoleLogger.nextLogger = fileLogger
fileLogger.nextLogger = emailLogger

consoleLogger.logMessage(level: .info, message: "This is an informational message")
consoleLogger.logMessage(level: .warning, message: "This is a warning message")
consoleLogger.logMessage(level: .error, message: "This is an error message")