//
//  ViewController.swift
//  Json
//
//  Created by Đoàn Minh Hoàng on 5/28/17.
//  Copyright © 2017 Đoàn Minh Hoàng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        readJson()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func readJson() {
        let path = Bundle.main.url(forResource: "jsonFile", withExtension: "json")
        let data = try! Data(contentsOf: path!)
        let json = try! JSONSerialization.jsonObject(with: data) as! [[String: Any]]
        for array in json {
            let person = array["person"] as! [String: Any]
            if person["age"] as! Int > 25 {
                print(person["name"] as! String)
            }
        }
    }
}

