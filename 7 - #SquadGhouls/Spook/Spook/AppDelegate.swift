//
//  AppDelegate.swift
//  Spook
//
//  Created by Jesse Tipton on 10/27/16.
//  Copyright © 2016 MAD. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, UNUserNotificationCenterDelegate {

    var window: UIWindow?
    
    // MARK: - UIApplicationDelegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let center = UNUserNotificationCenter.current()
        center.delegate = self
        
        let actions = [
            UNNotificationAction(identifier: "action🐌yes", title: "Yes", options: []),
            UNNotificationAction(identifier: "action🐌no", title: "Nope", options: [.destructive])
        ]
        
        let category = UNNotificationCategory(identifier: "basic", actions: actions, intentIdentifiers: [], options: [])
        center.setNotificationCategories([category])
        
        return true
    }
    
    // MARK: - UNUserNotificationCenterDelegate
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.alert])
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
