//
//  HomeBlockTableViewCell.swift
//  UberClone
//
//  Created by Admin on 21/07/22.
//

import UIKit

class HomeBlockTableViewCell: UITableViewCell {

    @IBOutlet weak var promoButton: UIButton!
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        promoButton.layer.cornerRadius = 8.0
        
        view1.layer.cornerRadius = 15.0
        view1.clipsToBounds = true
        
        view2.layer.cornerRadius = 15.0
        view2.clipsToBounds = true
        
        view3.layer.cornerRadius = 15.0
        view3.clipsToBounds = true
        
        view4.layer.cornerRadius = 15.0
        view4.clipsToBounds = true
        
        view5.layer.cornerRadius = 15.0
        view5.clipsToBounds = true
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
