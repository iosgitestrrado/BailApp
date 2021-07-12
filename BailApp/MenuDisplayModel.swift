//
//  MenuDisplayModel.swift
//  BailApp
//
//  Created by Monish M S on 01/05/18.
//  Copyright © 2018 Monish M S. All rights reserved.
//









import UIKit

class MenuDisplayModel: NSObject {
    var menuLeftPannelImage :String!
    var menu_Image :String!
    var menu_Id :String!
    var menu_Name :String!
    var menu_arabicName :String!
    
    
    override init() {
        super.init()
        self.menuLeftPannelImage = ""
        self.menu_Image = ""
        self.menu_Id = ""
        self.menu_Name = ""
        self.menu_arabicName = ""
    }
    
    init( menuNameinit :String, menuIDinit :String,menuImageinit :String, menuLeftPannelImageinit :String, menu_arabicNameinit :String) {
        
        super.init()
        self.menu_Name = menuNameinit
        self.menu_Image = menuImageinit
        self.menu_Id = menuIDinit
        self.menuLeftPannelImage = menuLeftPannelImageinit
        self.menu_arabicName = menu_arabicNameinit
        
    }
    
    override var description: String
    {
        return "Menu Name : \(menu_Name)" + "Menu ID : \(menu_Id)" + "Image Name : \(menu_Image)" + "MenuLeftPannelImage : \(menuLeftPannelImage)" + "Menu ArabicName : \(menu_arabicName)"
    }

    
}
