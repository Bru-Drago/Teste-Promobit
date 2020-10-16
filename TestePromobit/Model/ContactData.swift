//
//  ContactData.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 14/10/20.
//

import Foundation


struct ContactData : Codable {
    
    var userID       : Int
    var userName     : String
    var userLastname : String
    var userCompany  : String
    var userEmail    : String
    var userNovo     : Bool
    var userPhoto    : String
    
    enum CodingKeys : String ,CodingKey {
        case userID       = "user_id"
        case userName     = "user_name"
        case userLastname = "user_lastname"
        case userCompany  = "user_company"
        case userEmail    = "user_email"
        case userNovo     = "user_novo"
        case userPhoto    = "user_photo"
    }
}

    
    
   
