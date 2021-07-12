
//
//  GetRespone.swift
//  Azool
//
//  Created by AJESHKUMAR CHEMPANKULAM DIVAKARAN on 17/05/17.
//  Copyright © 2017 donpaulpm. All rights reserved.
//

import UIKit
import Alamofire



protocol GetResultResponse {
    
    func GetServiceRespone(param:NSDictionary)
    
}
class GetRespone: NSObject {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var delegete:GetResultResponse?
    var shared = SharedInstance.sharedData
  
    
    func getserviceCall(param:[String : Any],tpye:NSString) {
        
          print(tpye )
        print(param )
        if var mainController = UIApplication.shared.keyWindow?.rootViewController {
            
            while let presentedViewController = mainController.presentedViewController {
                
                mainController = presentedViewController
                
            }
            if isInternetAvailable(){
                let xAxis = mainController.view.center.x
                let yAxis = mainController.view.center.y
                
                let frame = CGRect(x: (xAxis - 60), y: (yAxis - 60), width: 120, height:120)
              
                let myView = UIView(frame: frame)
         
                
                
                myView.backgroundColor = .white
                myView.layer.cornerRadius = 10
                myView.clipsToBounds = true
                
            
                let imageView = UIImageView()
                       let animationArray = [#imageLiteral(resourceName: "Gif1"),#imageLiteral(resourceName: "Gif2"),#imageLiteral(resourceName: "Gif3"),#imageLiteral(resourceName: "Gif4"),#imageLiteral(resourceName: "Gif5"),#imageLiteral(resourceName: "Gif6"),#imageLiteral(resourceName: "Gif7"),#imageLiteral(resourceName: "Gif8"),#imageLiteral(resourceName: "Gif9")]
                
               
                
                
                
                imageView.frame = CGRect(x: (xAxis - 50), y: (yAxis - 50), width: 100, height: 100)
                

                
               
                let testView1: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height:  screenSize.height))
                testView1.backgroundColor = .clear
                let testView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height:  screenSize.height))
                
                
                
                testView.backgroundColor = .black
                testView.alpha = 0.3
                mainController.view.addSubview(testView1)
                
                testView1.addSubview(testView)
                testView1.addSubview(myView)
                testView1.addSubview(imageView)
           let animationView = UIImageView(frame: CGRect(x: 0, y: 0, width: imageView.frame.size.width, height: imageView.frame.size.height))
                        animationView.backgroundColor = UIColor.white
                        animationView.animationImages = animationArray
                        animationView.animationDuration = 1.5
                        animationView.animationRepeatCount = 0
                        animationView.startAnimating()
                        imageView.addSubview(animationView)
                
                
                imageView.transform = CGAffineTransform(scaleX: 0.75, y: 0.75)
                
                
                UIView.animate(withDuration: 2.0,
                               delay: 0,
                               usingSpringWithDamping: 0.2,
                               initialSpringVelocity: 6.0,
                               options: .allowUserInteraction,
                               animations: { [weak self] in
                            imageView.transform = .identity
                               
                    },
                               completion: nil)
                
                
                let ulr =  NSURL(string:tpye as String)
                
              //  print(ulr)
                Alamofire.request(ulr! as URL , method: .post, parameters: param  , encoding: URLEncoding(destination: .methodDependent), headers: nil).responseJSON { (response:DataResponse<Any>) in
                  
                    
                    switch(response.result) {
                        
                        
                    case .success(_):
                        
                         testView1.removeFromSuperview()
                          if let data = response.result.value{
                          print(data)
                            let json = data as! NSDictionary
                            if((json.value(forKey: "status")) != nil){
                                let status = json.value(forKey: "status") as! Int
                                if (status == 200){
                                    
                                    self.delegete?.GetServiceRespone(param: json)
                                    
                                }else{
                                     if((json.value(forKey: "action")) != nil){
                                      let action = json.value(forKey: "action") as! String
                                        
                                        if action == "logout"{
                                            
                                            let domain = Bundle.main.bundleIdentifier!
                                            UserDefaults.standard.removePersistentDomain(forName: domain)
                                            UserDefaults.standard.synchronize()
                                            print(Array(UserDefaults.standard.dictionaryRepresentation().keys).count)
                                            
                                           
                                        }
                                    }
                                     else{
                                    
                                    Utilities.AlertActionDone(Title: "", Message: json.value(forKey: "message") as? String ?? LanguageHelper.ErrorFoundedTEXT(), ButtonText: LanguageHelper.DONETEXT(),setView:mainController.view )
                                    }
                                }
                            }
                            
                        }
                        break
                    case .failure(_):
                        
                       testView1.removeFromSuperview()
                        Utilities.AlertActionDone(Title: "", Message: response.result.error as? String ?? LanguageHelper.ErrorFoundedTEXT(), ButtonText: LanguageHelper.DONETEXT(),setView:mainController.view )
                        
                        break
                        
                        
                    }
                    
                }
                
            }else{
                
                
                 Utilities.AlertActionDone(Title: "", Message: LanguageHelper.NoInternetEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),setView:mainController.view )
                
                
            }
            
        }
        
    }
  
 func getserviceCallWithoutLoader(param:[String : Any],tpye:NSString)
    
    
    {
    
    print(tpye )
    print(param )
    if var mainController = UIApplication.shared.keyWindow?.rootViewController {
    
    while let presentedViewController = mainController.presentedViewController {
    
    mainController = presentedViewController
    
    }
    if isInternetAvailable(){
  
    
    

    
    
    let ulr =  NSURL(string:tpye as String)
    
  //  print(ulr)
    Alamofire.request(ulr! as URL , method: .post, parameters: param  , encoding: URLEncoding(destination: .methodDependent), headers: nil).responseJSON { (response:DataResponse<Any>) in
    
    
    switch(response.result) {
    
    
    case .success(_):
    

    if let data = response.result.value{
    print(data)
    let json = data as! NSDictionary
    if((json.value(forKey: "Status")) != nil){
    let status = json.value(forKey: "Status") as! NSString
    if (status .isEqual(to: "1")){
    
    self.delegete?.GetServiceRespone(param: json)
    
    }
    }
    
    }
    break
    case .failure(_):
  
    
    break
    
    
    }
    
    }
    
    }
    else{
        
        
        Utilities.AlertActionDone(Title: "", Message: LanguageHelper.NoInternetEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),setView:mainController.view )
        
        
        }
    
    
    
}
}

func getserviceCallWithoutLoaderOTP(tpye:NSString)
    
    
{
    
    print(tpye )
  
    if var mainController = UIApplication.shared.keyWindow?.rootViewController {
        
        while let presentedViewController = mainController.presentedViewController {
            
            mainController = presentedViewController
            
        }
        if isInternetAvailable(){
            
            
            let newString = tpye.replacingOccurrences(of: " ", with: "%20")

          let url:URL = URL(string:newString)!
            
             print(url)
            
            
            
            Alamofire.request(url, method: .get).responseJSON { response in
                let result = response.result
                print(result)
            }

         
          
            
        }
        else{
            
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.NoInternetEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),setView:mainController.view )
            
            
        }
        
        
        
    }

}


}


