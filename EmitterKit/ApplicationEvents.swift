
public typealias LaunchOptions = [NSObject: AnyObject]?

public class ApplicationEvents {
    public static let willResignActive = Event<UIApplication>()
    public static let didEnterBackground = Event<UIApplication>()
    public static let willEnterForeground = Event<UIApplication>()
    public static let didBecomeActive = Event<UIApplication>()
    public static let willTerminate = Event<UIApplication>()
    
    public static let didFinishLaunchingWithOptions = Event<LaunchOptions>()
    public static let registered = Event<(UIApplication, NSData)>()
    public static let launchComplete = Signal()
    
    public static let log = Event<EKLogLevel>()
}
