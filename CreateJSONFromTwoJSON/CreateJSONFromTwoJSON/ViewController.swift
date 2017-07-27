//
//  ViewController.swift
//  CreateJSONFromTwoJSON
//
//  Created by Marlon David Ruiz Arroyave on 7/27/17.
//  Copyright © 2017 mruiz723. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Bundle.main.paths(forResourcesOfType: "json", inDirectory: nil)
        print(p)
        if let path = Bundle.main.path(forResource: "CabinaChinese/lesson/lesson1", ofType:"json") {
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

