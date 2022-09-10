//
//  ContactData.swift
//  TableView
//
//  Created by Quickride on 02/09/22.
//

import Foundation

class ContactData {
    var contactName: String?
    var contactNumber: String?
    var profileImage: String?
    
    init(){
        
    }
    
    init(contactName: String?, contactNumber: String?,profileImage: String?){
        self.contactName = contactName
        self.contactNumber = contactNumber
        self.profileImage = profileImage
    }
}
