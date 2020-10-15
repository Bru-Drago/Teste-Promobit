//
//  MyContactCell.swift
//  TestePromobit
//
//  Created by Bruna Fernanda Drago on 15/10/20.
//

import UIKit

class MyContactCell: UITableViewCell {

    @IBOutlet weak var cImg: UIImageView!
    
    @IBOutlet weak var fullNameLbl: UILabel!
    
    @IBOutlet weak var companyLbl: UILabel!
    
    @IBOutlet weak var isNewImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
