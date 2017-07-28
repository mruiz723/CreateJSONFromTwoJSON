//
//  Utils.swift
//  CreateJSONFromTwoJSON
//
//  Created by Marlon David Ruiz Arroyave on 7/27/17.
//  Copyright © 2017 mruiz723. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Utils {
    
    static func compareCreateJSON(jsonData:NSData, jsonData2:NSData) {
        
        let jsonResult =  JSON(data: jsonData as Data)
        let jsonResult2 =  JSON(data: jsonData2 as Data)
        var result = jsonResult
        
        for item in jsonResult["items"].array! {
            print(item)
            let index = (jsonResult["items"].array?.index(of: item))!
            result["items"][index]["chinese"] = jsonResult2["items"][index]["chinese"]
            print(result["items"].array![index]["chinese"])
        }
    }
}
