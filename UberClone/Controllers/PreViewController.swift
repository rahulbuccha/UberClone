//
//  SplashScreenViewController.swift
//  UberClone
//
//  Created by Admin on 20/07/22.
//

import UIKit
import RevealingSplashView

class PreViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        //Initialize a revealing Splash with with the iconImage, the initial size and the background color
        let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "uberLogo")!,iconInitialSize: CGSize(width: 200, height: 200), backgroundColor: UIColor(red:0.0, green:0.0, blue:0.0, alpha:1.0))

        //Adds the revealing splash view as a sub view
        self.view.addSubview(revealingSplashView)
        
        revealingSplashView.animationType = SplashAnimationType.squeezeAndZoomOut
        
        
        //Starts animation
        revealingSplashView.startAnimation(){
            print("Completed")
        }
       
    }

    @IBAction func getStartedTapped(_ sender: Any) {
        
        
    }
}
