//
//  NewUser.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 17/10/20.
//

import Foundation

class NewUser {
    
    var name: String
    var company : String
    var email : String
    var phone : String
    var website : String
    var customNote : String
    //custom_note
    
    init(name :String ,company:String,email:String,phone:String,website:String,customNote:String) {
        self.name = name
        self.company = company
        self.email = email
        self.phone = phone
        self.website = website
        self.customNote = customNote
    }
    
}
