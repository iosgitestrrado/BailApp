//
//  SublistDataModel.swift
//  BailApp
//
//  Created by Monish M S on 02/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//

import UIKit

class SublistDataModel: NSObject {
    var SublistName :String!
    var SublistId :String!
    var SublistImage :String!
    var SublistPostdate :String!
    var Sublistcategory :String!
    var SublistAmount :String!
    var SublistAddress :String!
    var SublistDesc :String!
    var SublistCaseNo :String!
    
    
    
    override init() {
        
        self.SublistName = ""
        self.SublistId = ""
        self.Sublistcategory = ""
        self.SublistPostdate = ""
        self.SublistAmount = ""
        self.SublistImage = ""
        self.SublistAddress = ""
        self.SublistDesc = ""
        self.SublistCaseNo = ""
        super.init()
        
    }
 init( SublistNameinit :String,SublistIdinit :String,SublistImageinit :String,SublistPostdateinit :String,SublistAmountinit :String,Sublistcategoryinit :String,SublistAddressinit :String,SublistDescinit :String,SublistCaseNoinit :String) {
        
        super.init()
        self.SublistId = SublistIdinit
        self.SublistName = SublistNameinit
        self.SublistImage = SublistImageinit
        self.SublistPostdate = SublistPostdateinit
        self.SublistAmount = SublistAmountinit
        self.Sublistcategory = Sublistcategoryinit
        self.SublistAddress = SublistAddressinit
        self.SublistDesc = SublistDescinit
        self.SublistCaseNo = SublistCaseNoinit
    
    }
    
    override var description: String
    {
        return "Cattle Data Name : \(SublistId)"  + "Image CattleData : \(SublistName)"
    }
    
}
