//
//  ContactCell.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 14/10/20.
//

import UIKit

class ContactCell: UITableViewCell {

    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var companyLbl: UILabel!
    @IBOutlet weak var newLbl: UILabel!
    @IBOutlet weak var isNewView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        makeImageRound()
        makeIsNewViewRounded()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func makeImageRound(){
        userPhoto.layer.cornerRadius = userPhoto.frame.size.width / 2
        userPhoto.layer.masksToBounds = true
    }
    func makeIsNewViewRounded(){
        isNewView.layer.cornerRadius = 15
        isNewView.layer.masksToBounds = true
    }

    }


