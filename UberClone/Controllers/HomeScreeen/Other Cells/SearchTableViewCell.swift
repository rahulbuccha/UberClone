//
//  SearchTableViewCell.swift
//  UberClone
//
//  Created by Admin on 21/07/22.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    @IBOutlet weak var timeButton: UIButton!
    @IBOutlet weak var textField: UITextField!
       
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
        timeButton.layer.cornerRadius = 15.0
        self.textField.setIcon(UIImage())
        
        textField.layer.masksToBounds = true
        textField.layer.cornerRadius = 25.0

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}

extension UITextField {
func setIcon(_ image: UIImage) {
   let iconView = UIImageView(frame:
                  CGRect(x: 10, y: 5, width: 20, height: 20))
   iconView.image = UIImage(named: "search")
   let iconContainerView: UIView = UIView(frame:
                  CGRect(x: 20, y: 0, width: 30, height: 30))
   iconContainerView.addSubview(iconView)
   leftView = iconContainerView
   leftViewMode = .always
}
}
