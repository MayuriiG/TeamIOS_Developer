//
//  ViewController.swift
//  COLOUR-SHADING _inSwift
//
//  Created by Mayurii Gajbhiye on 12/01/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    let layer = CAGradientLayer()
        layer.colors = [UIColor.gray.cgColor,UIColor.systemBlue.cgColor]
        layer.frame = view.frame
        view.layer.addSublayer(layer)
    
    }


}

