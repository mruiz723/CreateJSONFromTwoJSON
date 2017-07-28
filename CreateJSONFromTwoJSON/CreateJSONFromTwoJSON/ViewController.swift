//
//  ViewController.swift
//  CreateJSONFromTwoJSON
//
//  Created by Marlon David Ruiz Arroyave on 7/27/17.
//  Copyright © 2017 mruiz723. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let fileManager = FileManager.default

        let bundle = Bundle.main.bundlePath
        let path = "\(bundle)/CabinaChinese/lessons"
        let path2 = "\(bundle)/csv_to_json"
        if let files = fileManager.subpaths(atPath: path) {
            if let files2 = fileManager.subpaths(atPath: path2) {
                for item in files {
                    if files2.contains(item){
                        if let jsonPath = NSData(contentsOfFile:"\(path)/\(item)") {
                            if let jsonPath2 = NSData(contentsOfFile:"\(path2)/\(item)") {
                               Utils.compareCreateJSON(jsonData: jsonPath, jsonData2: jsonPath2)
                            }
                        }
                    }
                }
            }
            
        }
        
        
        
        if let path = Bundle.main.path(forResource: "CreateJSONFromTwoJSON/CabinaChinese/lessons/lesson1", ofType:"json") {
            if let jsonPath = NSData(contentsOfFile: path) {
                do {
                    let jsonResult = try JSONSerialization.jsonObject(with: jsonPath as Data, options: .mutableContainers)
                    print(jsonResult)
                    
                } catch {
                    print("JSON Processing Failed")
                }
            }
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

