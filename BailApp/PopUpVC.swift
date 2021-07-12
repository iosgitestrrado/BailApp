//
//  PopUpVC.swift
//  BailApp
//
//  Created by Monish M S on 07/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController {
@IBOutlet weak var vwContainer: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
        
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
 
        
    }
    @IBAction func prisonerAction(_ sender: Any) {
        
        let imageDataDict:[String: String] = ["action": "prisoner"]
        
 NotificationCenter.default.post(name: Notification.Name("popUpRemove"), object: nil ,userInfo: imageDataDict)
        
    }
    
    @IBAction func otherAction(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("popUpRemove"), object: nil)
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
   
        self.tabBarController?.tabBar.isHidden = false
    }
}
extension UIView {
    
    // OUTPUT 1
    func dropShadow(scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.5
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 1
        
        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
    
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
