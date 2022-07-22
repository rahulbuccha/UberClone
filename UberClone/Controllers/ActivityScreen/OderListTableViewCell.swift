//
//  OderListTableViewCell.swift
//  UberClone
//
//  Created by Admin on 22/07/22.
//

import UIKit

class OderListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var oredrImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        oredrImage.layer.cornerRadius = 15.0
        oredrImage.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
