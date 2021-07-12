//
//  detailVC.swift
//  BailApp
//
//  Created by Monish M S on 03/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class detailVC: UIViewController {

    @IBOutlet weak var addressTxtVw: UITextView!
    @IBOutlet weak var descTxtVw: UITextView!
    @IBOutlet weak var amountBar: UIProgressView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var amount: UILabel!
    @IBOutlet weak var paid: UILabel!
    @IBOutlet weak var rem: UILabel!
    @IBOutlet weak var imagedetail: UIImageView!
    var modelGetDataDetail :SublistDataModel = SublistDataModel()
       @IBOutlet weak var navHieght: NSLayoutConstraint!
     @IBOutlet weak var addHieght: NSLayoutConstraint!
     @IBOutlet weak var descHieght: NSLayoutConstraint!
     @IBOutlet weak var totalHieght: NSLayoutConstraint!
   

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UI_USER_INTERFACE_IDIOM() == .phone {
            
            if screenSize.height == 812 {
                navHieght.constant = 84;
            }
        }
        
        name.text = modelGetDataDetail.SublistName
        date.text = modelGetDataDetail.SublistPostdate
     
       
        
        
        
        
        
    
        if modelGetDataDetail.Sublistcategory == "Prisoner" {
            
            
            
            let main_string:String = modelGetDataDetail.SublistCaseNo + " ( " + modelGetDataDetail.Sublistcategory + " )"
            let string_to_color:String  = modelGetDataDetail.Sublistcategory
            
         
            
            let attrString = NSMutableAttributedString(string: main_string, attributes: nil)
            let rangeText = (attrString.string as NSString).range(of: string_to_color)
           
            attrString.addAttributes([NSAttributedStringKey.foregroundColor: UIColor.black],
                                     range: rangeText)
            
          
                
          
            
          category.attributedText = attrString
            
        }else{
            
           category.text =  modelGetDataDetail.Sublistcategory
            
        }
        
        
        
        
        
        if   userDefaults.GET_USERDEFAULTS(objectValue:"country") == "" || userDefaults.GET_USERDEFAULTS(objectValue:"country") == "Bahrain" {
            
            
            
            amount.text =  modelGetDataDetail.SublistAmount + " BHD"
            
            
        }else{
            
            amount.text =  modelGetDataDetail.SublistAmount + " SAR"
            
        }
        
        
        
        
        
        
        let value = modelGetDataDetail.SublistAddress.height(withConstrainedWidth: addressTxtVw.frame.size.width, font: UIFont.systemFont(ofSize: 15, weight:.regular))
         let value1 = modelGetDataDetail.SublistAddress.height(withConstrainedWidth: addressTxtVw.frame.size.width, font: UIFont.systemFont(ofSize: 15, weight:.regular))
       
        addHieght.constant = 50 + value;
        descHieght.constant = 50 + value1;
        
        
        totalHieght.constant =   360 + addHieght.constant + descHieght.constant
        
        
        addressTxtVw.text = modelGetDataDetail.SublistAddress
        descTxtVw.text = modelGetDataDetail.SublistDesc
        
        
       imagedetail.sd_setImage(with: URL(string: modelGetDataDetail.SublistImage), placeholderImage:nil)
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func detailLink(_ sender: Any) {
        
        
        UIApplication.shared.open(URL(string : "https://services.bahrain.bh/wps/portal/!ut/p/a1/jc9RC4IwEAfwj7RzbvN63BTc0iGRku1F9hSDsoiIPn6695b3dvD7c_8jjozEzf4dLv4V7rO_rrsTE2JdZhTpvut7BVKo1nLeZmizBZwXwJGWullBzjhI1hzU0OkcOtiWL2upWdECAEMKplK6KnYWwIhtefgx8u_9o3-SE3GRpb6IIFUzgkSPx20Yxo8JX_m7qLU!/dl5/d5/L0lHSkovd0RNQUprQUVnQSEhLzRKU0UvZW4!/")!, options: [:], completionHandler: { (status) in
            
        })
        
        
        
        
    }
    
    @IBAction func backNavigationAction(_ sender: Any) {
        
        _ = navigationController?.popViewController(animated: true)
        
        
    }

}
