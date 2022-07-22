//
//  UpcomingTableViewCell.swift
//  UberClone
//
//  Created by Admin on 22/07/22.
//

import UIKit

class UpcomingTableViewCell: UITableViewCell {

    @IBOutlet weak var upcomingView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        upcomingView.layer.borderWidth = 2
        upcomingView.layer.cornerRadius = 15.0
        upcomingView.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
