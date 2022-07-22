//
//  PastOrdersTableViewCell.swift
//  UberClone
//
//  Created by Admin on 22/07/22.
//

import UIKit

class PastOrdersTableViewCell: UITableViewCell {

    @IBOutlet weak var pastOrderImage: UIImageView!
    @IBOutlet weak var pastOrderView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pastOrderImage.layer.cornerRadius = 15.0
        pastOrderImage.clipsToBounds = true
        
        pastOrderView.layer.borderWidth = 2
        pastOrderView.layer.cornerRadius = 15.0
        pastOrderView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
