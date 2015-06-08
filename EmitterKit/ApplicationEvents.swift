//
//  ApplicationEvents.swift
//  EmitterKit
//
//  Created by Andy Bennett on 04/06/2015.
//  Copyright (c) 2015 Firefly Experience Ltd. All rights reserved.
//

import UIKit

public struct EKLogEvent {
    var message: String
    var file: String
    var line: Int
    
    public init(_ message: String, file: String = __FILE__, line: Int = __LINE__) {
        self.message = message
        self.file = file
        self.line = line
    }
}

public enum EKLogLevel {
    case Verbose(EKLogEvent)
    case Debug(EKLogEvent)
    case Info(EKLogEvent)
    case Warning(EKLogEvent)
    case Error(EKLogEvent)
    
    public func event() -> EKLogEvent {
        switch self {
        case .Verbose(let event): return event
        case .Debug(let event)  : return event
        case .Info(let event)   : return event
        case .Warning(let event): return event
        case .Error(let event)  : return event
        }
    }
}

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
