//
//  ViewController.swift
//  FinalView
//
//  Created by apple on 2/2/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Loginbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Loginbtn.layer.cornerRadius = 15
    }

    @IBAction func LoginAction(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "tableViewController") as! tableViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goSignUp(_ sender: Any) {
        let vc1 = self.storyboard?.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.navigationController?.pushViewController(vc1, animated: true)
    }
}

