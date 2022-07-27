//
//  SplashScreenViewController.swift
//  UberClone
//
//  Created by Admin on 20/07/22.
//

import UIKit
import RevealingSplashView
import Hero

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

    @IBAction func getStartedTapped(_ sender: UIStoryboardSegue) {
        
    }
    
    //MARK: MARK: Creating Hero animation on click back button
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showLottie" {
            let dest = segue.destination as! LottieAnimationViewController
            dest.hero.isEnabled = true
            dest.hero.modalAnimationType = .selectBy(presenting: .zoomSlide(direction: .up), dismissing: .zoomSlide(direction: .up))
            
        }
    }
    
}
