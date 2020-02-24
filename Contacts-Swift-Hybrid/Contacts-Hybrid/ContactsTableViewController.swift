//
//  ContactsTableViewController.swift
//  Contacts-Hybrid
//
//  Created by Paul Solt on 12/16/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

import UIKit
//ContactController (objC)
//Contact(swift)
//TableViewController(swift)

//Rename an Obj-C class for Swift

class ContactsTableViewController: UITableViewController {
    
    // we need to expose the Objc code files to swift using bridging header
    var contactController = ContactController() //alloc/init all in one step
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	
	// MARK: UITableViewDataSource methods
	
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		
		
        return contactController.contacts.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
		
        //contacts array is now a <Contacts> array not <Any>
   let  contact = contactController.contacts[indexPath.row]
            cell.textLabel?.text = contact.name
            cell.detailTextLabel?.text = contact.relationship 
        
        
       
		
		return cell
	}

}

//Rename an Obj-C class for Swift
