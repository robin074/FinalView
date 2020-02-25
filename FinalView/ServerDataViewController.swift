//
//  ServerDataViewController.swift
//  FinalView
//
//  Created by apple on 2/2/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit
import Alamofire
class ServerDataViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchData()
        // Do any additional setup after loading the view.
    }
    
    
    func fetchData(){
        Alamofire.request("https://newsapi.org/v2/top-headlines?country=us&apiKey=56a5b2dcef394b38a12db285dba6de49").responseJSON {
            response in
            
            if let json = response.result.value {
                print("JSON: \(json)")
//                let data = JSON(data: json)
//                var name = json[0]["name"].string
                // do something with json here
            }
        }
    }
    
}
