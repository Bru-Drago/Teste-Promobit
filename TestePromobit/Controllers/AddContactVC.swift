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
    
    var list :[ContactData]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureBtnLayout()
        callConfigureTxtFieldLayout()
        hideAllLabels()
        
        print("******************")
        print(list)
       
        
    }
    func validateEmail(_ email: String)->Bool{
            var validador = true
            for contact in list! {
                if(email.uppercased()==contact.userEmail.uppercased()){
                    validador=false
                    break
                }
            }
            return validador
        }
        
    
    
    func hideAllLabels(){
        hideLabelAlpha(nameErroLbl)
        hideLabelAlpha(companyErroLbl)
        hideLabelAlpha(emailErroLbl)
        hideLabelAlpha(phoneErroLbl)
        hideLabelAlpha(siteErroLbl)
        hideLabelAlpha(noteErroLbl)
    }
    
    func hideLabelAlpha(_ label: UILabel){
        label.alpha = 0
        
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
    
    func doSendPost(){
        
        let name = nameTxt.text!
        let company = companyTxt.text!
        let email = emailTxt.text!
        let phone = phoneTxt.text!
        let site = siteTxt.text!
        let note = noteTxt.text!
        
        var parameters = [
            "name": name,
            "company": company,
            "email": email,
            "phone" : phone,
            "website" : site,
            "custom_note" : note
            
        ]
        
        ServiceManager.shared.sendPostRequest(parameters) { (error) in
            
            if let error = error {
                print("erro no sendPost \(error)")
                return
            }
           
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SucessVC")
        self.present(vc, animated: true, completion: nil)
        print("dados inseridos com sucesso")
        
    }
    
    func validateTextfields()-> Bool{
        hideAllLabels()
        
        var fieldIsNotEmpty = true
        if nameTxt.text == nil || nameTxt.text == "" {
            nameErroLbl.alpha = 1
            nameErroLbl.text = "Preenchimento obrigatório"
            fieldIsNotEmpty = false
        }
        if companyTxt.text == nil || companyTxt.text == ""{
            companyErroLbl.alpha = 1
            companyErroLbl.text = "Preenchimento obrigatório"
            fieldIsNotEmpty = false
        }
        if emailTxt.text == nil || emailTxt.text == "" {
            emailErroLbl.alpha = 1
            emailErroLbl.text = "Preenchimento obrigatório"
            fieldIsNotEmpty = false
        } else if (!validateEmail(emailTxt.text!)) {
            emailErroLbl.alpha = 1
            emailErroLbl.text = "E-mail já cadastrado"
            fieldIsNotEmpty = false
        }
        if phoneTxt.text == nil  || phoneTxt.text == ""{
            phoneErroLbl.alpha = 1
            phoneErroLbl.text = "Preenchimento obrigatório"
            fieldIsNotEmpty = false
        }
        if siteTxt.text == nil || siteTxt.text == "" {
            siteErroLbl.alpha = 1
            siteErroLbl.text = "Preenchimento obrigatório"
            fieldIsNotEmpty = false
        }
        if noteTxt.text == nil || noteTxt.text == ""{
            noteErroLbl.alpha = 1
            noteErroLbl.text = "Preenchimento obrigatório"
            fieldIsNotEmpty = false
        }
     
        return fieldIsNotEmpty
        
    }
   
    

@IBAction func cancelBtnTapped(_ sender: UIButton) {
}


@IBAction func saveBtnTapped(_ sender: UIButton) {
    if validateTextfields() {
        doSendPost()
        
        
    }

    
    
    
    
    
   }
}

