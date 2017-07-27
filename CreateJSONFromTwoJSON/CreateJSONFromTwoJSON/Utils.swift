//
//  Utils.swift
//  CreateJSONFromTwoJSON
//
//  Created by Marlon David Ruiz Arroyave on 7/27/17.
//  Copyright © 2017 mruiz723. All rights reserved.
//

import Foundation

struct Utils {
    
    func compareCreateJSON(jsonBase:Dictionary<String, String>, json2:Dictionary<String, String>) -> Dictionary<String, String> {
        
        let json: Dictionary<String, String> = Dictionary<String, String>()
        
        for item in jsonBase {
            if let item2 = json2[item.key] {
                
            }
        }
        
        return json
    }
}
