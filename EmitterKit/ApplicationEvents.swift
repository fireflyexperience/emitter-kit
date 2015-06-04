//
//  ApplicationEvents.swift
//  EmitterKit
//
//  Created by Andy Bennett on 04/06/2015.
//  Copyright (c) 2015 Firefly Experience Ltd. All rights reserved.
//

import UIKit

class ApplicationEvents {
    static let shared = ApplicationEvents()
    
    let eventApplicationWillResignActive = Event<UIApplication>()
    let eventApplicationDidEnterBackground = Event<UIApplication>()
    let eventApplicationWillEnterForeground = Event<UIApplication>()
    let eventApplicationDidBecomeActive = Event<UIApplication>()
    let eventApplicationWillTerminate = Event<UIApplication>()
}
