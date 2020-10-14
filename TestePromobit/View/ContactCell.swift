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
    
    
    @IBOutlet weak var isNewBtn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
