//
//  SignInVC.swift
//  BailApp
//
//  Created by Monish M S on 01/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit
import DropDown



class SignInVC:  UIViewController,GetResultResponse,UITextFieldDelegate
{
   
    
    
    
    @IBOutlet weak var nameTxtFd: UITextField!
    @IBOutlet weak var passwordTxtFd: UITextField!
    @IBOutlet weak var codephoneTxtFd: UITextField!
    @IBOutlet weak var emailTxtFd: UITextField!
    @IBOutlet weak var phoneTxtFd: UITextField!
    @IBOutlet weak var confirmPasswordTxtFd: UITextField!
    @IBOutlet weak var ageTxtFd: UITextField!

    @IBOutlet weak var maleButton: UIButton!
    @IBOutlet weak var femaleButton: UIButton!
    let functionCall = GetRespone()
    var genderString:String = "male"
     var contryArray:[String] = ["Kingdom of Bahrain","Kingdom of Saudi Arabia"]
     let countryDrop = DropDown()
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        self.setupUI()
   
    }
  
    
    
    func setupUI(){
    
        
        emailTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.EMAILTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        
        passwordTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.PASSWORDTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        
        nameTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.NAMETEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
         codephoneTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.CODETEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        phoneTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.PHONETEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        confirmPasswordTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.ConfirmPassswordTEXT(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
        ageTxtFd?.attributedPlaceholder = NSAttributedString(string: LanguageHelper.AgeText(), attributes: [NSAttributedStringKey.foregroundColor  : UIColor.black])
      
        countryDrop.bottomOffset = CGPoint(x: 5, y: (codephoneTxtFd?.frame.height)!)
        countryDrop.anchorView = codephoneTxtFd
        countryDrop.direction = .any
        countryDrop.width = 280
        
        
        
        
        
        countryDrop.dataSource = contryArray
        countryDrop.cellNib = UINib(nibName: "MyCell", bundle: nil)
        
        countryDrop.customCellConfiguration = { (index: Index, item: String, cell: DropDownCell) -> Void in
            guard let cell = cell as? MyCell else { return }
         
            
            if item == "Kingdom of Bahrain" {
                
                cell.suffixLabel.text = "+973"
                
                cell.flagNation.image = #imageLiteral(resourceName: "baharinFlag")
            }else{
                
                cell.suffixLabel.text = "+966"
                 cell.flagNation.image = #imageLiteral(resourceName: "sudiFlag")
                
            }
            
            
            
           
        }
        
        countryDrop.selectionAction = { [unowned self] (index: Int, item: String) in
            self.categoryTypeNameOn(index: index, item: item)
        }
        
        
        
        
    }
    func categoryTypeNameOn(index: Int, item: String){
        
        if item == "Kingdom of Bahrain" {
        
        codephoneTxtFd?.text = "+973"
        }else{
            
             codephoneTxtFd?.text = "+966"
        }
        
    }
    
    @IBAction func countryDropAction(_ sender: Any) {
        
        
        countryDrop.show()
    }
    
    
    
    
    
    
    
    
    func serviceCall()  {
   
        functionCall.delegete = self
        let baseHappens:String = setlanguage() ? BailAppBaseUrl : FarminnoBaseUrlArabic
     
            functionCall.getserviceCall(param: OTPServiceCallRepresenation(), tpye: baseHappens+BailAppOTP as NSString)
            
            
       
        
        
        
    }
    
  
    
    func GetServiceRespone(param:NSDictionary){
        
        
            
        let   dict =  param.object(forKey: "data") as! NSDictionary
        
        print(dict)
        
        let menu_Id : Int = dict.object(forKey: "otp")as? Int ?? 0
        let stringMenu_Id = "\(menu_Id)"
        
        
        
        
        
        
        
     userDefaults.SET_USERDEFAULTS(user_language: stringMenu_Id, objectValue: "otp")
        
        
        performSegue(withIdentifier: "signInSegue", sender: self)
        
        
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "signInSegue") {
            let secondViewController = segue.destination as! OTPVC
            secondViewController.parametersDict = RegisterServiceCallRepresenation()
        }
    }
    
    
    
    
    
    
    func AlertActionNavigation(Title:String,Message:String,ButtonText : String ,setView :UIView) {
        
        MTPopUp(frame: setView.frame).show(complete: { (index) in
            print("INDEX : \(index)")
           
            
            
        }, view: setView, animationType: MTAnimation.FadeIn_FadeOut, strMessage: Message, btnArray: [ButtonText])
        
        
    }
    
    
    
    @IBAction func RegisterAction(_ sender: Any) {
        
        if HelperClass.TEXTFIELDIsEmpty(value: nameTxtFd!) {
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.NameEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
            
        }
        else if HelperClass.TEXTFIELDIsEmpty(value: ageTxtFd!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.AgeEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
            
            
            
        else if HelperClass.TEXTFIELDIsEmpty(value: codephoneTxtFd!){
            
            Utilities.AlertActionDone(Title: "", Message:"Please Select Country Code", ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
            
            
            
        else if HelperClass.TEXTFIELDIsEmpty(value: phoneTxtFd!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.PhoneEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
        else if  (phoneTxtFd.text?.characters.count)!<6{
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.PhoneNumberInvaildTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
        
        
        
        
        else if HelperClass.TEXTFIELDIsEmpty(value: emailTxtFd!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.EmailIdEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
        else if !HelperClass.isValidEmail(testStr: (emailTxtFd?.text!)!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.EmailIdNotValidTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
        }else if HelperClass.TEXTFIELDIsEmpty(value: passwordTxtFd!){
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.PasswordEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
        else if  (passwordTxtFd.text?.characters.count)!<6 || (passwordTxtFd.text?.characters.count)!>32{
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.PasswordInvaildTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
        else if  passwordTxtFd.text != confirmPasswordTxtFd.text{
            
            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.PasswordInvaildTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            
        }
            
            
            //        else if HelperClass.TEXTFIELDIsEmpty(value: locationTxtFd!){
            //
            //            Utilities.AlertActionDone(Title: "", Message: LanguageHelper.LocationEmptyTEXT(), ButtonText: LanguageHelper.DONETEXT(),  setView:self.view)
            //
            //        }
       
            
            
     
            
            
        else{
            
            self.serviceCall( )
        }
    }
    @IBAction func backNavigationAction(_ sender: Any)
    {
        
        dismiss(animated: true, completion: nil)
        
    }
    @IBAction func genderAction(_ sender: UIButton) {
        if (genderString == "male") {
            maleButton.setImage(#imageLiteral(resourceName: "radio"), for: .normal)
            femaleButton.setImage(#imageLiteral(resourceName: "s_radio"), for: .normal)
            genderString = "female"
        }else{
            femaleButton.setImage(#imageLiteral(resourceName: "radio"), for: .normal)
            maleButton.setImage(#imageLiteral(resourceName: "s_radio"), for: .normal)
            genderString = "male"
            
        }
        
    }
        
    
    @IBAction func tapGestureaction(_ sender: Any) {
       
        emailTxtFd?.resignFirstResponder()
        passwordTxtFd?.resignFirstResponder()
        confirmPasswordTxtFd?.resignFirstResponder()
        phoneTxtFd?.resignFirstResponder()
        nameTxtFd?.resignFirstResponder()
        ageTxtFd?.resignFirstResponder()
        
    }
    //TODO:- Text Delegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        switch (textField){
        case nameTxtFd!:
            phoneTxtFd?.becomeFirstResponder()
            break
        case phoneTxtFd!:
            emailTxtFd?.becomeFirstResponder()
            break
        case emailTxtFd!:
            passwordTxtFd?.becomeFirstResponder()
            break
            //        case passwordTxtFd!:
            //            locationTxtFd?.becomeFirstResponder()
        //            break
        case passwordTxtFd!:
            confirmPasswordTxtFd?.becomeFirstResponder()
            break
            
        default:
            textField.resignFirstResponder()
            break
            
        }
        return true
    }
    

    

    
}
extension SignInVC{
    
    
    
    func RegisterServiceCallRepresenation() -> [String : Any] {
        
        let phone = (codephoneTxtFd?.text)! + (phoneTxtFd?.text)!
        
        
        var country:String = ""
        if  (phoneTxtFd?.text)! == "+973" {
            
            country = "Kingdom of Bahrain"
        }else{
            
            country = "Kingdom of Saudi Arabia"
        }
        
        
        
        
        
        
        let parameters:[String : Any] = ["email":emailTxtFd?.text ?? "","age":ageTxtFd?.text ?? "","country":country,"password":passwordTxtFd?.text ?? "","name":nameTxtFd?.text ?? "","mobile":phone,"gender":genderString, "device_token":userDefaults.GET_USERDEFAULTS(objectValue: "APNSToken")]
        return parameters as [String : Any]
        
    }
    func OTPServiceCallRepresenation() -> [String : Any] {
        
        let parameters:[String : Any] = ["email":emailTxtFd?.text ?? ""]
        return parameters as [String : Any]
        
    }
}
