//
//  ViewController.swift
//  BottomsUp
//
//  Created by Jesse Tipton on 9/15/16.
//  Copyright © 2016 MAD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!

    @IBAction func calculate(_ sender: UIButton) {
        guard let input = textField.text, let age = Int(input) else {
            label.text = "Please input a valid age."
            return
        }
        
        if age >= 21 {
            label.text = "You are old enough to drink! Bottoms up! 🍻"
        } else {
            label.text = "You are not old enough to drink. Sit down. 👶"
        }
    }

}
