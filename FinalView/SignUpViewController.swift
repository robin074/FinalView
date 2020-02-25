//
//  SignUpViewController.swift
//  FinalView
//
//  Created by apple on 2/2/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUpbtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        signUpbtn.layer.cornerRadius = 15
        
    }
    
    @IBAction func signUpAction(_ sender: Any) {
        let vc2 = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc2, animated: true)
    }
    
    @IBAction func goLogin(_ sender: Any) {
        let vc3 = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.navigationController?.pushViewController(vc3, animated: true)
    }
    

}
