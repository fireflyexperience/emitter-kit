//
//  ApplicationEvents.swift
//  EmitterKit
//
//  Created by Andy Bennett on 04/06/2015.
//  Copyright (c) 2015 Firefly Experience Ltd. All rights reserved.
//

import UIKit

public typealias LaunchOptions = [NSObject: AnyObject]?

public class ApplicationEvents {
    public static let willResignActive = Event<UIApplication>()
    public static let didEnterBackground = Event<UIApplication>()
    public static let willEnterForeground = Event<UIApplication>()
    public static let didBecomeActive = Event<UIApplication>()
    public static let willTerminate = Event<UIApplication>()
    
    public static let didFinishLaunchingWithOptions = Event<LaunchOptions>()
}
