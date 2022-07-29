//
//  LottieAnimationViewController.swift
//  UberClone
//
//  Created by Admin on 26/07/22.
//

import UIKit
import Lottie
import Hero

class LottieAnimationViewController: UIViewController {

    let animationView = AnimationView()
  //  let animationView2 = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //MARK: automatically navigates to other controller
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            self.performSegue(withIdentifier: "cell", sender: nil)
        }
        
        setupAnimation()
    }
    
    
    //MARK: Function for Lottie animation
    private func setupAnimation() {
//        animationView.animation = Animation.named("193857-abstract-modular-cube-1")
//        animationView2.frame = CGRect(x: 0, y: 200, width: 200, height: 200)
//        animationView2.contentMode = .scaleAspectFit
//        animationView2.loopMode = .loop
//        animationView2.play()
        
        animationView.animation = Animation.named("101513-simple-loading-animation")
        animationView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        animationView.center = view.center
       // animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        //view.addSubview(animationView2)
    }
    

}
