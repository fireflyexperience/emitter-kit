
import UIKit

public typealias LaunchOptions = [NSObject: AnyObject]?

@objc public class EMKLog: NSObject {
    public class func Error(error: NSError, file: String = __FILE__, line: Int = __LINE__) {
        ApplicationEvents.log(.Error, error: error, file: file, line: line)
    }
    
    public class func Log(level: String, message: String, file: String = __FILE__, line: Int = __LINE__) {
        if let lvl = EKLogLevel(rawValue: level) {
            ApplicationEvents.log(lvl, message: message, file: file, line: line)
        }
    }
}

public func EKError(error: NSError, file: String = __FILE__, line: Int = __LINE__) {
    ApplicationEvents.log(.Error, error: error, file: file, line: line)
}

public class ApplicationEvents {
    public static let willResignActive = Event<UIApplication>()
    public static let didEnterBackground = Event<UIApplication>()
    public static let willEnterForeground = Event<UIApplication>()
    public static let didBecomeActive = Event<UIApplication>()
    public static let willTerminate = Event<UIApplication>()
    
    public static let didFinishLaunchingWithOptions = Event<LaunchOptions>()
    public static let registered = Event<(UIApplication, NSData)>()
    public static let launchComplete = Signal()
    
    public static let log = Event<EKLogEvent>()
    
    public static func log(level: EKLogLevel, message: String, file: String = __FILE__, line: Int = __LINE__) {
        let event = EKLogEvent(level: level, message: message, file: file, line: line)
        self.log.emit(event)
    }
    
    public static func log(level: EKLogLevel, error: NSError, file: String = __FILE__, line: Int = __LINE__) {
        let message = "\(error.domain)(\(error.code)): \(error.description), \(error.debugDescription), \(error.userInfo)"
        let event = EKLogEvent(level: level, message: message, file: file, line: line)
        self.log.emit(event)
    }
}
