
import UIKit

public struct EKLogEvent {
    public var message: String
    public var file: String
    public var line: Int
    
    public init(_ message: String, file: String = __FILE__, line: Int = __LINE__) {
        self.message = message
        self.file = file
        self.line = line
    }
}

public enum EKLogLevel: String {
    case Verbose(EKLogEvent) = "VERBOSE"
    case Debug(EKLogEvent) = "DEBUG"
    case Info(EKLogEvent) = "INFO"
    case Warning(EKLogEvent) = "WARNING"
    case Error(EKLogEvent) = "ERROR"
    
    public func event() -> EKLogEvent
    {
        switch self {
        case .Verbose(let event): return event
        case .Debug(let event)  : return event
        case .Info(let event)   : return event
        case .Warning(let event): return event
        case .Error(let event)  : return event
        }
    }
    
    public func toString() -> String
    {
        return self.rawValue
    }
    
    public func print()
    {
        let type = self.toString()
        let event = self.event()
        
        println("\(type): \(event.file.lastPathComponent) (\(event.line)): \(event.message)")
    }
}