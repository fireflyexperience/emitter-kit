
import UIKit

public struct EKLogEvent {
    public var level: EKLogLevel
    public var message: String
    public var file: String
    public var line: Int
    
    public init(level: EKLogLevel, message: String, file: String = __FILE__, line: Int = __LINE__) {
        self.level = level
        self.message = message
        self.file = file
        self.line = line
    }
    
    public func print()
    {
        let type = level.toString()
        println("\(type): \(self.file.lastPathComponent) (\(self.line)): \(self.message)")
    }
}

public enum EKLogLevel: String {
    case Verbose = "VERBOSE"
    case Debug = "DEBUG"
    case Info = "INFO"
    case Warning = "WARNING"
    case Error = "ERROR"
    
    public func toString() -> String
    {
        return self.rawValue
    }
}