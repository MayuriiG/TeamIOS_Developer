//
//  DemoTableViewCell.swift
//  CollectionView-basic
//
//  Created by Mayurii Gajbhiye on 05/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class DemoTableViewCell: UITableViewCell {

  
    @IBOutlet weak var collectnOfPicks: UICollectionView!
    
    
    
    @IBOutlet weak var lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
