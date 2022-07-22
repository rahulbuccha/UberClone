//
//  LoginViewController.swift
//  UberClone
//
//  Created by Admin on 20/07/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var googleButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
       
        googleButton.layer.borderWidth = 0.5
    }


}
