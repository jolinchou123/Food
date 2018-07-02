//
//  WantTableViewCell.swift
//  00457141final
//
//  Created by User15 on 2018/6/27.
//  Copyright © 2018年 User09. All rights reserved.
//

import UIKit

class WantTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var foodView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
