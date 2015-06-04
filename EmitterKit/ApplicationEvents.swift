//
//  ApplicationEvents.swift
//  EmitterKit
//
//  Created by Andy Bennett on 04/06/2015.
//  Copyright (c) 2015 Firefly Experience Ltd. All rights reserved.
//

import UIKit

public class ApplicationEvents {
    public static let eventApplicationWillResignActive = Event<UIApplication>()
    public static let eventApplicationDidEnterBackground = Event<UIApplication>()
    public static let eventApplicationWillEnterForeground = Event<UIApplication>()
    public static let eventApplicationDidBecomeActive = Event<UIApplication>()
    public static let eventApplicationWillTerminate = Event<UIApplication>()
}
