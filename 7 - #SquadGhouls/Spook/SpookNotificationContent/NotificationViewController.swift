//
//  NotificationViewController.swift
//  SpookNotificationContent
//
//  Created by Jesse Tipton on 10/27/16.
//  Copyright © 2016 MAD. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
    
    
    func didReceive(_ response: UNNotificationResponse, completionHandler completion: @escaping (UNNotificationContentExtensionResponseOption) -> Void) {
        if response.actionIdentifier == "action🐌yes" {
            label?.text = "😀"
        } else if response.actionIdentifier == "action🐌no" {
            label?.text = "😢"
        }
        let deadline = DispatchTime(uptimeNanoseconds: DispatchTime.now().uptimeNanoseconds + (1 * NSEC_PER_SEC))
        DispatchQueue.main.asyncAfter(deadline: deadline) { 
            completion(.dismiss)
        }
    }

    
    
    func didReceive(_ notification: UNNotification) {
        
    }
    
    
    
    
    
    
    
    
    
    
}
