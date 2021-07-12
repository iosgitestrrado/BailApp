//
//  OTPVC.swift
//  BailApp
//
//  Created by Monish M S on 03/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class OTPVC: UIViewController,GetResultResponse,UITextFieldDelegate{
    
    
    @IBOutlet weak var oneTxtFd: UITextField!
    @IBOutlet weak var twoTxtFd: UITextField!
    @IBOutlet weak var threeTxtFd: UITextField!
    @IBOutlet weak var fourTxtFd: UITextField!
    let functionCall = GetRespone()
    
    
    var  resendBool: Bool = false
    
    var parametersDict:[String : Any] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
   
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        if HelperClass.TEXTFIELDIsEmpty(value: oneTxtFd!)||HelperClass.TEXTFIELDIsEmpty(value: twoTxtFd!)||HelperClass.TEXTFIELDIsEmpty(value: threeTxtFd!)||HelperClass.TEXTFIELDIsEmpty(value: fourTxtFd!) {
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.OTPNumberInvaildTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
            
        }else{
     
            
            
            
            
            if oneTxtFd.text!+twoTxtFd.text!+threeTxtFd.text!+fourTxtFd.text! ==  userDefaults.GET_USERDEFAULTS(objectValue:"otp")
            {
            
            self.serviceCall()
                
            }else{
                
                 Utilities.AlertActionDone(Title: "", Message: LanguageHelper.OTPNumberInvaildTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            }
            
        }
    }
    
    
     @IBAction func reSendAction(_ sender: Any) {
    
    
    resendBool = true
        ReserviceCall()
    }
    
    
    
    
    func serviceCall()  {
        
        resendBool = false
            
            
            functionCall.delegete = self
        let baseHappens:String = setlanguage() ? BailAppBaseUrl : FarminnoBaseUrlArabic
        
        
        functionCall.getserviceCall(param: parametersDict, tpye: baseHappens+BailAppuserReg as NSString)
        
        
        
        
        
    }
    func ReserviceCall()  {
        
        
        functionCall.delegete = self
        let baseHappens:String = setlanguage() ? BailAppBaseUrl : FarminnoBaseUrlArabic
        
        
        functionCall.getserviceCall(param:OTPServiceCallRepresenation() , tpye: baseHappens+BailAppOTP as NSString)
        
        
        
        
        
    }
    
    
    
    
    func OTPServiceCallRepresenation() -> [String : Any] {
        
        let parameters:[String : Any] = ["email":parametersDict["email"] as? String ?? ""]
        return parameters as [String : Any]
        
    }
    
    
    
    
    
    
    
    
    @IBAction func tapGestureaction(_ sender: Any) {
        
        oneTxtFd?.resignFirstResponder()
        twoTxtFd?.resignFirstResponder()
        threeTxtFd?.resignFirstResponder()
        fourTxtFd?.resignFirstResponder()
    }
    //TODO:- Text Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        switch (textField){
        case oneTxtFd!:
            twoTxtFd?.becomeFirstResponder()
            break
        case twoTxtFd!:
            threeTxtFd?.becomeFirstResponder()
            break
        case threeTxtFd!:
            fourTxtFd?.becomeFirstResponder()
            break
        default:
            textField.resignFirstResponder()
            break
            
        }
        return true
    }
    
    
    func GetServiceRespone(param:NSDictionary){
        
        
        
        let   dict =  param.object(forKey: "data") as! NSDictionary
        
        print(dict)
        
        
        if resendBool {
            
            let menu_Id : Int = dict.object(forKey: "otp")as? Int ?? 0
            let stringMenu_Id = "\(menu_Id)"
            
            
            
            
            
            
            
            userDefaults.SET_USERDEFAULTS(user_language: stringMenu_Id, objectValue: "otp")
            
            
            
            
            
            
            
               Utilities.AlertActionDone(Title: "", Message:  "OTP Resend Successfully", ButtonText: LanguageHelper.DONETEXT(),setView:self.view )
            
            
        }
        else{
        
        
        userDefaults.SET_USERDEFAULTS(user_language: true, objectValue: "loginComplete")
        
        userDefaults.SET_USERDEFAULTS(user_language: parametersDict["password"] as? String ?? "" , objectValue: "password")
        
        
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "email") as? String ?? "", objectValue: "email")
      
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "utoken")as? String ?? "" , objectValue: "utoken")
        
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "image")as? String ?? "", objectValue: "image")
        
        
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "mobile")as? String ?? "", objectValue: "mobile")
        
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "name")as? String ?? "", objectValue: "name")
    
         userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "country")as? String ?? "", objectValue: "country")
        
        
        
        
        
        self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
            
            
        }
    }
    
    @IBAction func backNavigationAction(_ sender: Any) {
        
       dismiss(animated: true, completion: nil)
        
        
    }
}

extension String {
    func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        
        return ceil(boundingBox.height)
}
}
