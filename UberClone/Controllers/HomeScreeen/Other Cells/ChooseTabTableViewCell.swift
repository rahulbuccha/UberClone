//
//  ChooseTabTableViewCell.swift
//  UberClone
//
//  Created by Admin on 21/07/22.
//

import UIKit

class ChooseTabTableViewCell: UITableViewCell {

    @IBOutlet weak var starImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        starImage.layer.cornerRadius = 20.0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
