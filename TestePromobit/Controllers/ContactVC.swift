//
//  ViewController.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 14/10/20.
//

import UIKit
import Alamofire

class ContactVC: UIViewController {
    
    @IBOutlet weak var contactTableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    var contacts : [ContactData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        callGetContacts()

    }
    
    @IBAction func addButtonTapped(_ sender: UIButton) {
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

