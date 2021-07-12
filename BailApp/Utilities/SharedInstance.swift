//
//  SharedInstance.swift
//  Azool
//
//  Created by DON PAUL PM on 15/05/17.
//  Copyright © 2017 donpaulpm. All rights reserved.
//

import UIKit

class SharedInstance: NSObject {

static let sharedData = SharedInstance()
     var categoryDetails   =  [MenuDisplayModel]()
    var markrtId :String!
     var cattleId :String!
     var cattleType :String!
    var cattleTypeName :String!
      var markrtTypeName :String!

    func categoryDetailsUpdate(marketIdInit :[MenuDisplayModel]){
        categoryDetails.removeAll()
        categoryDetails = marketIdInit
        
       
    }

    func marketIdUpdate(marketIdInit :String,marketTypeNameInit :String){
        markrtId = ""
       markrtTypeName = ""
        
        markrtId = marketIdInit
        
        markrtTypeName = marketTypeNameInit
    }
    func cattleTypeUpdate(cattleTypeInit :String,cattleTypeNameInit :String){
        cattleType = ""
        cattleTypeName = ""
        
        cattleType = cattleTypeInit
           cattleTypeName = cattleTypeNameInit
        
    }
    
    func resetValues(){
        
        markrtId = ""
        markrtTypeName = ""
        cattleType = ""
        cattleTypeName = ""
        cattleId = ""
        
    }
    
    
    func cattleIdUpdate(cattleIdInit :String){
        cattleId = ""
        
        
        cattleId = cattleIdInit
        
    }
    
}
