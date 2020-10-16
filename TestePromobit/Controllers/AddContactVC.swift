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

        
        configureBtnLayout()
        callConfigureTxtFieldLayout()
        
        
    }
    func callConfigureTxtFieldLayout(){
        configureTxtFieldLayout(nameTxt)
        configureTxtFieldLayout(companyTxt)
        configureTxtFieldLayout(emailTxt)
        configureTxtFieldLayout(phoneTxt)
        configureTxtFieldLayout(siteTxt)
        configureTxtFieldLayout(noteTxt)
    }
    
    func configureTxtFieldLayout(_ textField: UITextField){
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height, width: textField.frame.width, height: 2)
       // bottomLine.backgroundColor = K.CustomColor.blueCustom
        bottomLine.backgroundColor = UIColor.systemGray4.cgColor
        textField.borderStyle = .none
        textField.layer.addSublayer(bottomLine)
    }
    func configureBtnLayout(){
        cancelBtn.layer.cornerRadius = 5
        cancelBtn.layer.masksToBounds = true
        cancelBtn.layer.borderColor = K.CustomColor.blueCustom
        cancelBtn.layer.borderWidth = 2
        saveBtn.layer.cornerRadius = 5
        saveBtn.layer.masksToBounds = true
    }
    

    @IBAction func cancelBtnTapped(_ sender: UIButton) {
    }
    

    @IBAction func saveBtnTapped(_ sender: UIButton) {
    }
}
