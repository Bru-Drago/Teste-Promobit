//
//  ViewController.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 14/10/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var contacts : [ContactData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callGetContacts()

    }
    
    func callGetContacts(){
        ServiceManager.shared.getContacts { (contacts, errorMsg) in
            guard let contacts = contacts else {
                print("erro na call")
                return
            }
            self.contacts = contacts
            print(contacts)
            //implementar aqui o reload data
        }
    }


}

