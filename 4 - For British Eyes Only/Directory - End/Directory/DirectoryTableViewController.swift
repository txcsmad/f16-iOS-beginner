//
//  DirectoryTableViewController.swift
//  Directory
//
//  Created by Jesse Tipton on 9/29/16.
//  Copyright © 2016 Matt. All rights reserved.
//

import UIKit

class DirectoryTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ARRESTED_DEV.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let contact = ARRESTED_DEV[indexPath.row]
        cell.textLabel?.text = "\(contact.firstName) \(contact.lastName)"
        
        return cell
    }
    
}















