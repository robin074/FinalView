//
//  ShowViewController.swift
//  FinalView
//
//  Created by apple on 2/2/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ShowViewController: UIViewController {

    @IBOutlet weak var ShowImage: UIImageView!
    @IBOutlet weak var ShowName: UILabel!
    @IBOutlet weak var ShowAge: UILabel!
    
    var imageShow:UIImage?
    var nameShow = ""
    var ageShow = ""
    
    
    @IBOutlet weak var Serverbtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Serverbtn.layer.cornerRadius = 15
        ShowImage.image = imageShow
        ShowName.text = nameShow
        ShowAge.text = ageShow
        
    }
    @IBAction func dataShow(_ sender: Any) {
        let vc4 = self.storyboard?.instantiateViewController(withIdentifier: "ServerDataViewController") as! ServerDataViewController
               
               self.navigationController?.pushViewController(vc4, animated: true)
        
    }
    

   
}
