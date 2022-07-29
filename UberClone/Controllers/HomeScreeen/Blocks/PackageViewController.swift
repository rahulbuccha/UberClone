//
//  PackageViewController.swift
//  UberClone
//
//  Created by Admin on 25/07/22.
//

import UIKit
import Hero

class PackageViewController: UIViewController {

    @IBOutlet weak var whatToButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        whatToButton.layer.cornerRadius = 20.0
    }
    
    
    //MARK: Creating Hero animation on click back button
    @IBAction func showHome(_ sender: UIButton) {
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showHome" {
                let dest = segue.destination as! HomeScreenViewController
                dest.hero.isEnabled = true
                dest.hero.modalAnimationType = .selectBy(presenting: .zoomSlide(direction: .up), dismissing: .zoomSlide(direction: .down))
    
                
            }
            
        }
    
}
