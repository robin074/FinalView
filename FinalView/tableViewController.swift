//
//  tableViewController.swift
//  FinalView
//
//  Created by apple on 2/2/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class tableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.imageViewbtn.image = UIImage(named: imageArray[indexPath.row])
        cell.Label1btn.text = nameArray[indexPath.row]
        cell.Label2btn.text = ageArray[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
        
    }
    

    @IBOutlet weak var tableView: UITableView!
    var imageArray = ["1","2","4","5","6"]
    var nameArray = ["Anik","Abdullah","Abdur Rob","Raj","Irfan"]
    var ageArray = ["25","26","40","50","60"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc4 = self.storyboard?.instantiateViewController(withIdentifier: "ShowViewController") as! ShowViewController
        vc4.imageShow = UIImage(named: imageArray[indexPath.row])
        vc4.nameShow = nameArray[indexPath.row]
        vc4.ageShow = ageArray[indexPath.row]
        self.navigationController?.pushViewController(vc4, animated: true)
    }
   

}
