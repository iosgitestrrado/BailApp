//
//  ForgotPasswordVC.swift
//  BailApp
//
//  Created by Monish M S on 01/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class ForgotPasswordVC: UIViewController,GetResultResponse,UITextFieldDelegate{
   
    
    @IBOutlet weak var emailTxtFd: UITextField!
    
    let functionCall = GetRespone()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        // Do any additional setup after loading the view.
    }
    func setupUI(){
   
        
        
        
        
        
        emailTxtFd.attributedPlaceholder = NSAttributedString(string: LanguageHelper.EMAILTEXT(), attributes: [NSAttributedStringKey.foregroundColor : UIColor.black])
        
    
        
       
        
    }
    @IBAction func backNavigationAction(_ sender: Any) {
        
       dismiss(animated: true, completion: nil)
        
        
    }
    
    func serviceCall()  {
        
        let baseHappens:String = setlanguage() ? BailAppBaseUrl : FarminnoBaseUrlArabic
        functionCall.delegete = self
        
        
        functionCall.getserviceCall(param: ServiceCallRepresenation(), tpye: baseHappens+BailAppForgot as NSString)
        
        
        
        
        
    }
    
    
    @IBAction func doneAction(_ sender: Any) {
        
        if HelperClass.TEXTFIELDIsEmpty(value: emailTxtFd!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.EmailIdEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
        else if !HelperClass.isValidEmail(testStr: (emailTxtFd?.text!)!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.EmailIdNotValidTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
        }else{
            self .serviceCall()
            
        }
        
        
        
    }
    
    func GetServiceRespone(param:NSDictionary){
        
        
        
        
        self.AlertActionNavigation(Title: "", Message:param.object(forKey: "message") as? String ?? "", ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
        
        
        
        
    }
    
    
    func AlertActionNavigation(Title:String,Message:String,ButtonText : String ,setView :UIView) {
        
        MTPopUp(frame: setView.frame).show(complete: { (index) in
            print("INDEX : \(index)")
            self.dismiss(animated: true, completion: nil)
            
            
        }, view: setView, animationType: MTAnimation.FadeIn_FadeOut, strMessage: Message, btnArray: [ButtonText])
        
        
    }
    
    
    
    
    @IBAction func tapGestureaction(_ sender: Any) {
        
        
        emailTxtFd.resignFirstResponder()
    }
    //TODO:- Text Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
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
extension ForgotPasswordVC{
    
    
    func ServiceCallRepresenation() -> [String : Any] {
        
        let parameters:[String : Any] = ["email":emailTxtFd?.text ?? ""]
        return parameters as [String : Any]
        
    }
}
