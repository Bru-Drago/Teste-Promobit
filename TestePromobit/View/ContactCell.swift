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
    @IBOutlet weak var isNewImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        makeImageRound()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func makeImageRound(){
        userPhoto.layer.cornerRadius = userPhoto.frame.size.width / 2
        userPhoto.layer.masksToBounds = true
    }

}
