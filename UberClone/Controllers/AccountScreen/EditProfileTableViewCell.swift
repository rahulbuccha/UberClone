//
//  EditProfileTableViewCell.swift
//  UberClone
//
//  Created by Admin on 21/07/22.
//

import UIKit

class EditProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var ratingButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var walletButton: UIButton!
    @IBOutlet weak var clockButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ratingButton.layer.cornerRadius = 15.0
        profileButton.layer.cornerRadius = 40.0
        
        helpButton.layer.cornerRadius = 15.0
        walletButton.layer.cornerRadius = 15.0
        clockButton.layer.cornerRadius = 15.0
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
