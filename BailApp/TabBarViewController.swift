//
//  TabBarViewController.swift
//  BailApp
//
//  Created by Monish M S on 02/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController,UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
//        UITabBar.appearance().isTranslucent = false
//        UITabBar.appearance().backgroundColor = UIColor.clear
      UITabBar.appearance().backgroundImage = UIImage(named: "tabbar")
//        UITabBar.appearance().contentMode = .scaleAspectFit
        UITabBar.appearance().tintColor = UIColor.white
         UITabBar.appearance().unselectedItemTintColor = UIColor.white
        self.delegate = self
        
//
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    
 func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    
      let tabBarIndex = tabBarController.selectedIndex

    if tabBarIndex == 0 {
    
      NotificationCenter.default.post(name: Notification.Name("popUpRemove"), object: nil)
    }
    
    
     if  !userDefaults.GET_USERDEFAULTSSTATUS(objectValue: "loginComplete") {
    
    
      
        
       
        if tabBarIndex == 3 {
            
           
            
            
            self.selectedIndex = 0
            
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "LogicVCID") as! LogicVC
        
        self.present(vc, animated: true, completion: nil)
        }
        
    }
    }
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
