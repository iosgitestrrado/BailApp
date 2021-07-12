//
//  ChatListModel.swift
//  farminno
//
//  Created by AJESHKUMAR CHEMPANKULAM DIVAKARAN on 07/12/17.
//  Copyright © 2017 Ajesh Mac Mini2. All rights reserved.
//

import UIKit

class ChatListModel: NSObject {
    var ChatName :String!
    var ChatId :String!
    var ChatImage :String!
    var ChatPostdate :String!
    var Chatcount :String!
    
    
    override init() {
        
        self.ChatName = ""
        self.ChatId = ""
        self.ChatImage = ""
        self.ChatPostdate = ""
        self.Chatcount = ""
        super.init()
        
    }
    
    init( ChatNameinit :String,ChatIdinit :String,ChatImageinit :String,ChatPostdateinit :String,ChatCountinit :String) {
        
        super.init()
        self.ChatId = ChatIdinit
        self.ChatName = ChatNameinit
        self.ChatImage = ChatImageinit
        self.ChatPostdate = ChatPostdateinit
        self.Chatcount = ChatCountinit
    }
    
    override var description: String
    {
        return "Cattle Data Name : \(ChatId)"  + "Image CattleData : \(ChatName)"
    }}
