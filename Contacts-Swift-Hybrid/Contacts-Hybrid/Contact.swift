//
//  Contact.swift
//  Contacts-Hybrid
//
//  Created by Lambda_School_Loaner_219 on 2/24/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

import Foundation
// Swift structs do not work in Obj-C, so we need to use a class
class Contact {
    var name:String
    var relationship:String?
    
    init(name:String, relationship:String?) {
        self.name = name
        self.relationship = relationship
    }
}
