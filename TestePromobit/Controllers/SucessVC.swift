//
//  SucessVC.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 15/10/20.
//

import UIKit

class SucessVC: UIViewController {
    
    
    @IBOutlet weak var checkImg: UIImageView!
    @IBOutlet weak var sucessLbl: UILabel!
    @IBOutlet weak var voltarBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        configureBtnLayout()
    }
    
    func configureBtnLayout(){
        voltarBtn.layer.borderWidth  = 2
        voltarBtn.layer.borderColor  = UIColor.white.cgColor
        voltarBtn.layer.cornerRadius = 5
    }

    @IBAction func returnBtnTapped(_ sender: UIButton) {
    }
    
}
