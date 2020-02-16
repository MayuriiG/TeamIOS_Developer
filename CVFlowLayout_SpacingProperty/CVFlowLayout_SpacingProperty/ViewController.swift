//
//  ViewController.swift
//  CVFlowLayout_SpacingProperty
//
//  Created by Mayurii Gajbhiye on 14/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
   
 var arrBabies = [UIImage]()

    @IBOutlet weak var collectionViewCont: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        arrBabies = [#imageLiteral(resourceName: "babyy"),#imageLiteral(resourceName: "babyy6"),#imageLiteral(resourceName: "babyy3"),#imageLiteral(resourceName: "babyy16"),#imageLiteral(resourceName: "babyy9"),#imageLiteral(resourceName: "baby7"),#imageLiteral(resourceName: "babyy7"),#imageLiteral(resourceName: "babyy10"),#imageLiteral(resourceName: "babyy15"),#imageLiteral(resourceName: "baby4"),#imageLiteral(resourceName: "baby1"),#imageLiteral(resourceName: "babyy"),#imageLiteral(resourceName: "babyy6"),#imageLiteral(resourceName: "babyy3"),#imageLiteral(resourceName: "babyy7"),#imageLiteral(resourceName: "babyy"),#imageLiteral(resourceName: "babyy6"),#imageLiteral(resourceName: "babyy3") ]
        
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrBabies.count
      
    }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as!CollectionViewCell
        cell.imagView.image  = arrBabies[indexPath.row]
        
        
        return cell
       }
       

    

}
//UICollectionViewDelegateFlowLayout
extension ViewController:UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let collectionWidth = collectionView.bounds.width
        return CGSize(width: collectionWidth/3-2, height: collectionWidth/3-2)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    
}

