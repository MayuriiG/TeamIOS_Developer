//
//  LogicTableViewCell.swift
//  SideMenu_Bar
//
//  Created by Mayurii Gajbhiye on 18/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class LogicTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lbl: UILabel!
    
    
    @IBOutlet weak var pikView: UIImageView!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
