//
//  SlpashVC.swift
//  BailApp
//
//  Created by Monish M S on 02/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class SlpashVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let xAxis = self.view.center.x
        let yAxis = self.view.center.y
        
        let frame = CGRect(x: (xAxis - 100), y: (yAxis - 100), width: 200, height:200)
        
        let myView = UIView(frame: frame)
        
        
        
        myView.backgroundColor = .white
    
        
        
        let imageView = UIImageView()
        let animationArray = [#imageLiteral(resourceName: "slpash1"),#imageLiteral(resourceName: "slpash2"),#imageLiteral(resourceName: "slpash3"),#imageLiteral(resourceName: "slpash4"),#imageLiteral(resourceName: "slpash5"),#imageLiteral(resourceName: "slpash6"),#imageLiteral(resourceName: "slpash7"),#imageLiteral(resourceName: "slpash8"),#imageLiteral(resourceName: "slpash9"),#imageLiteral(resourceName: "slpash10"),#imageLiteral(resourceName: "slpash11")]
        
        
        
        
        
        imageView.frame = CGRect(x: (xAxis - 100), y: (yAxis - 100), width: 200, height: 200)
        
        
        
        
        let testView1: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height:  screenSize.height))
        testView1.backgroundColor = .clear
      
        self.view.addSubview(testView1)
        
      
        testView1.addSubview(myView)
        testView1.addSubview(imageView)
        let animationView = UIImageView(frame: CGRect(x: 0, y: 0, width: imageView.frame.size.width, height: imageView.frame.size.height))
        animationView.backgroundColor = UIColor.white
        animationView.animationImages = animationArray
        animationView.animationDuration = 3.0
        animationView.animationRepeatCount = 1
        animationView.startAnimating()
        imageView.addSubview(animationView)
        
        imageView.transform = CGAffineTransform(scaleX: 1.25, y: 1.25)
        
        
        UIView.animate(withDuration: 3.0,
                       delay: 0,
                       usingSpringWithDamping: 0.2,
                       initialSpringVelocity: 6.0,
                       options: .allowUserInteraction,
                       animations: { [weak self] in
                        imageView.transform = .identity
                        
            },
                       completion: nil)
        
        // Do any additional setup after loading the view.
    }
  override func viewWillAppear(_ animated: Bool)  {
    
    
    
    let when = DispatchTime.now() + 3
    
    // if CLLocationManager.locationServicesEnabled() {
    
    DispatchQueue.main.asyncAfter(deadline: when) {
    
   self.performSegue(withIdentifier: "homeSegueSplash", sender: self)
//    }else{
//
//     self.performSegue(withIdentifier: "loginSegueSplash", sender: self)    }
//
//
//    }
//
   

}
}

}
