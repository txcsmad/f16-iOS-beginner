//
//  ViewController.swift
//  Spook
//
//  Created by a ghost on 10/27/16.
//  Copyright © 2016 MAD. All rights preserved (like a mummy).
//

import UIKit
import UserNotifications

func someFunc(error: Error?) -> Void {
    
}

class ViewController: UIViewController {

    @IBAction private func scheduleNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Boo! 👻"
        content.body = "Did I scare you?"
        content.categoryIdentifier = "basic"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)
        
        let request = UNNotificationRequest(identifier: "spook", content: content, trigger: trigger)
        
        let center = UNUserNotificationCenter.current()
        center.add(request) { error in
            if let e = error {
                print(e)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let center = UNUserNotificationCenter.current()
        center.requestAuthorization(options: [.alert]) { success, error in
            if success {
                print("We have permission to send ~spooky~ notifications!")
            }
        }
    }
    
}




















