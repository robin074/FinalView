//
//  TableViewCell.swift
//  FinalView
//
//  Created by apple on 2/2/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewbtn: UIImageView!
    @IBOutlet weak var Label1btn: UILabel!
    @IBOutlet weak var Label2btn: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
