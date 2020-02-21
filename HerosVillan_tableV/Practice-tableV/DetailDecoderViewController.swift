//
//  DetailDecoderViewController.swift
//  Practice-tableV
//
//  Created by Mayurii Gajbhiye on 20/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class DetailDecoderViewController: UIViewController {

    
    
    @IBOutlet weak var imageDisply: UIImageView!
    
    
    @IBOutlet weak var iconPlaced: UIImageView!
    
    @IBOutlet weak var herosName: UILabel!
    
    @IBOutlet weak var idDisply: UILabel!
    
    
    @IBOutlet weak var attackType: UILabel!
    
    @IBOutlet weak var primaryAttr: UILabel!
   
    
    
    var serverDataPassing = [HerosVillan]()
    
    
    var j = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
  
        detailDataDisplay()
        print(serverDataPassing[j]) //clickedview
    
        
        
        imageDisply.layer.cornerRadius = 38
        imageDisply.layer.borderWidth = 5
        imageDisply.layer.borderColor = #colorLiteral(red: 0.9364722371, green: 0.7883899808, blue: 0.7512227893, alpha: 1)
        imageDisply.contentMode = .scaleAspectFit
        iconPlaced.layer.cornerRadius = 5
    }
    
    func detailDataDisplay(){
                    //.img([server] decoder.swift)
      
     //Image 
        let urlString = "https://api.opendota.com"+(serverDataPassing[j].img)!//print()
        let url = URL(string: urlString)
        if let imageData = try? Data(contentsOf: url!){
      
        imageDisply.image = UIImage(data: imageData)
                 
        }
       //Icon
        let IconUrlString = "https://api.opendota.com"+(serverDataPassing[j].icon)!//print()
        let urlOfIcon = URL(string: IconUrlString)
      if let iconData = try? Data(contentsOf: urlOfIcon!){
            
            iconPlaced.image = UIImage(data: iconData)
                       
              }
      //  iconPlaced.image
        herosName.text = serverDataPassing[j].localized_name!
        //string interpolation "\()" cannt assi Int value string
       
        idDisply.text = "\(serverDataPassing[j].id!)"
        attackType.text = serverDataPassing[j].attack_type//converty to Int
        primaryAttr.text = "\(serverDataPassing[j].primary_attr!)"

   }
    
    
    
    
}
