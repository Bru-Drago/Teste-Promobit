//
//  AddContactVC.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 15/10/20.
//

import UIKit

class AddContactVC: UIViewController {
    
    @IBOutlet weak var nameErroLbl: UILabel!
    @IBOutlet weak var nameTxt: UITextField!
    
    @IBOutlet weak var companyTxt: UITextField!
    
    @IBOutlet weak var companyErroLbl: UILabel!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    
    @IBOutlet weak var emailErroLbl: UILabel!
    
    @IBOutlet weak var phoneTxt: UITextField!
    
    @IBOutlet weak var phoneErroLbl: UILabel!
    
    @IBOutlet weak var siteTxt: UITextField!
    
    @IBOutlet weak var siteErroLbl: UILabel!
    
    
    
    @IBOutlet weak var noteTxt: UITextField!
    
    @IBOutlet weak var noteErroLbl: UILabel!
    
    
    @IBOutlet weak var cancelBtn: UIButton!
    
    @IBOutlet weak var saveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func cancelBtnTapped(_ sender: UIButton) {
    }
    

    @IBAction func saveBtnTapped(_ sender: UIButton) {
    }
}
