//
//  AccountSettingsTableViewCell.swift
//  UberClone
//
//  Created by Admin on 21/07/22.
//

import UIKit

class AccountSettingsTableViewCell: UITableViewCell {

    @IBOutlet weak var settingImage : UIImageView!
    @IBOutlet weak var settingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        settingImage.layer.cornerRadius = 30.0
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
