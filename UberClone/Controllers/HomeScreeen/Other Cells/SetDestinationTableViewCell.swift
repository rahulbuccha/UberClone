//
//  SetDestinationTableViewCell.swift
//  UberClone
//
//  Created by Admin on 21/07/22.
//

import UIKit

class SetDestinationTableViewCell: UITableViewCell {

    @IBOutlet weak var pinImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        pinImage.layer.cornerRadius = 20.0
            }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
