//
//  HelperClass.swift
//  Azool
//
//  Created by AJESHKUMAR CHEMPANKULAM DIVAKARAN on 17/05/17.
//  Copyright © 2017 donpaulpm. All rights reserved.
//

import UIKit

class HelperClass: NSObject {
  
    static  func isValidEmail(testStr:String) -> Bool  {
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    static func isValidPhone(value: String) -> Bool {
        
        let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    
    static func isValidPhoneNumber(value: String) -> Bool {
        
        let PHONE_REGEX = "^[0-9]{6,12}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
    
//    static func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
//        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
//        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
//        
//        return ceil(boundingBox.height)
//    }

    
//    static func statusViewDisplay (view:UIView)  {
//        if  let statusView = Bundle.main.loadNibNamed("StatusBarView", owner: self, options: nil)?.first as? StatusBarView{
//            statusView.frame.size.width = screenSize.size.width
//            view.addSubview(statusView)
//        }
//    }
    
    
    static func TEXTFIELDIsEmpty(value: UITextField) -> Bool {
        
        
        guard let text = value.text, !text.isEmpty else {
            return true
        }
        return false
    }
    static func TEXTVIEWEmpty(value: UITextView) -> Bool {
        
        
        guard let text = value.text, !text.isEmpty else {
            return true
        }
        return false
    }
    
    
    
    
    static func callPhone(value:String){
        
        if let phoneCallURL:URL = URL(string: "tel:\(value)") {
            let application:UIApplication = UIApplication.shared
            if (application.canOpenURL(phoneCallURL)) {

                
                if #available(iOS 10.0, *) {
                    application.open(phoneCallURL, options: [:], completionHandler: nil)
                } else {
                    // Fallback on earlier versions
                }
                    

            }
        }
        
        
    }
}
