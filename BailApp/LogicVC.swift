//
//  LogicVC.swift
//  BailApp
//
//  Created by Monish M S on 01/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class LogicVC:  UIViewController,GetResultResponse,UITextFieldDelegate{
    
    
    @IBOutlet weak var emailTxtFd: UITextField!
    @IBOutlet weak var passwordTxtFd: UITextField!
   
    let functionCall = GetRespone()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupUI()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func setupUI(){
     //   HelperClass.statusViewDisplay(view:self.view)
        
        
        
        
        
        emailTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.EMAILTEXT(), attributes: [NSAttributedStringKey.foregroundColor : UIColor.black])
        
        passwordTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.PASSWORDTEXT(), attributes: [NSAttributedStringKey.foregroundColor : UIColor.black])
        
//        forgotPasswordLbl.text = LanguageHelper.FORGOTPASSWOEDTEXT()
//        regsterBtn.text = LanguageHelper.REGISTERTEXT()
//        doyouWantLbl.text = LanguageHelper.DOYOUHAVETEXT()
//        loginBtn.setTitle(LanguageHelper.LOGINTEXT(), for: .normal)
        
     
        
    }
  
    
    
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        if HelperClass.TEXTFIELDIsEmpty(value: emailTxtFd!) {
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.EmailIdEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
            
        }else if !HelperClass.isValidEmail(testStr: (emailTxtFd?.text!)!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.EmailIdNotValidTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
        }else if HelperClass.TEXTFIELDIsEmpty(value: passwordTxtFd!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.PasswordEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }else{
            
          self.serviceCall()
            
        }
    }
    func serviceCall()  {
        
        
        functionCall.delegete = self
        let baseHappens:String = setlanguage() ? BailAppBaseUrl : FarminnoBaseUrlArabic
        
        
        functionCall.getserviceCall(param: LoginServiceCallRepresenation(), tpye: baseHappens+BailAppLogin as NSString)
        
        
        
        
        
    }
    
    @IBAction func dismissAction(_ sender: Any)
    {
        
      dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    
    
    @IBAction func tapGestureaction(_ sender: Any) {
        
        emailTxtFd?.resignFirstResponder()
        passwordTxtFd?.resignFirstResponder()
        
        
    }
    //TODO:- Text Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        switch (textField){
        case emailTxtFd!:
            passwordTxtFd?.becomeFirstResponder()
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
        userDefaults.SET_USERDEFAULTS(user_language: true, objectValue: "loginComplete")
        
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "email") as? String ?? "", objectValue: "email")
        userDefaults.SET_USERDEFAULTS(user_language: (passwordTxtFd?.text)!  , objectValue: "password")
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "utoken")as? String ?? "" , objectValue: "utoken")
        
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "image")as? String ?? "", objectValue: "image")
        
        
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "mobile")as? String ?? "", objectValue: "mobile")
        
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "name")as? String ?? "", objectValue: "name")
        userDefaults.SET_USERDEFAULTS(user_language: dict.value(forKey: "country")as? String ?? "", objectValue: "country")
        emailTxtFd?.text = ""
        passwordTxtFd?.text = ""
        dismiss(animated: true, completion: nil)
    }
    
    
    
}

extension LogicVC{
    
    
    func LoginServiceCallRepresenation() -> [String : Any] {
        
        let parameters:[String : Any] = ["username":emailTxtFd?.text ?? "","password":passwordTxtFd?.text ?? "", "device_token":"6w245125125dc16"]
        return parameters as [String : Any]
        
}
}
