//
//  CommanConstants.swift
//  Azool
//
//  Created by DON PAUL PM on 15/05/17.
//  Copyright © 2017 donpaulpm. All rights reserved.
//

import Foundation

/*
 SkyFloatingLabelTextField.swift   arabic 33  line let user_status = UserDefaults.standard.value(forKey: "Language") as! Bool
 
 
 if user_status {*/




func setlanguage() -> Bool  {
    
    
    
    
    var user_status:Bool = true
    
    //print(userDefaults.GET_USERDEFAULTSSTATUS(objectValue: "Language"))
    
    
    if  userDefaults.GET_USERDEFAULTSSTATUS(objectValue: "Language") {
        user_status  = false
        
    }
    
    return user_status
}


let FarminnoAboutUrl = "https://www.farminoo.com/mobilefarm/webservices_v2/aboutus.php"
let BailAppBaseUrl = "http://ariesestrrado.com/bailapp/api/"
let FarminnoBaseUrlArabic = "https://www.farminoo.com/mobilefarm/webservice_arabic_v2/"



let newSharedInstance = SharedInstance.sharedData
let BailAppLogin = "user/login"
let BailAppForgot = "user/forgetpassword"
let BailAppdasboard = "user/dasboard"
let BailAppuserReg = "user/signup"
let BailAppuserRequest = "user/request"
let BailAppMyRequest = "user/myrequest"
let BailAppCategoryRequest = "user/categoryrequest"
let BailAppOTP = "user/emailvalid"


