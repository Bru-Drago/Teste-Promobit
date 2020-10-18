//
//  Constants.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 15/10/20.
//

import UIKit

struct K {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName    = "ContactCell"
    
    struct CustomColor {
        static let blueCustom = UIColor(red: 0/255, green: 186/255, blue: 255/255, alpha: 1).cgColor
        static let deppBlue = UIColor(red: 0, green: 86, blue: 119, alpha: 1).cgColor
    }
    struct Segues {
        static let segueFilter = "goToFilter"
        static let segueAdd = "goToAdd"
    }
    
}
