//
//  ViewController.swift
//  CollectionView-basic
//
//  Created by Mayurii Gajbhiye on 05/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource {
 
    
    @IBOutlet weak var tableViewContainer: UITableView!
    
    @IBOutlet weak var lblActr: UILabel!
    var arrActor  = ["AlluArjun","MaheshBabu","Surya","RamCharan","Nitin","Nani","Ram","Prabhas"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    //TAble ViewCell
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 8
     }
    
    
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoTableViewCell", for: indexPath) as!DemoTableViewCell
        cell.collectnOfPicks.delegate = self
        cell.collectnOfPicks.dataSource = self
        cell.collectnOfPicks.tag = indexPath.row
        cell.lbl.text  = arrActor[indexPath.row]
        cell.collectnOfPicks.reloadData()
  
        return cell
   

    }
    
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
          return 680
      }
    
      
      
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 300
//    }
//
    
    
  //CollectionView...............................
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0{
            
            return 5//Allu arjun
            
        }
        if collectionView.tag == 1{
            
            
            return 8 //MaheshBabu
        }
        if collectionView.tag == 2{
               
               
               return 8
           }
        if collectionView.tag == 3{
                       
                    
              return 8
                   }
        if collectionView.tag == 4{
                   
                   
              return 8
               }
        if collectionView.tag == 5{
                   
                   
              return 8
               }
         
         if collectionView.tag == 6{
                    
              return 8
                }
          
         if collectionView.tag == 7{
            
              return 8

            }
  
        
            return 0

        
        }
   
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActorsPicCollectionViewCell", for: indexPath)as!ActorsPicCollectionViewCell
        
        // cell.pickOfActor.image  = image literal
        if collectionView.tag  == 0{
            
              //  cell.pickOfActor.image = UIImage(named: "alluarjun8")
            cell.pickOfActor.image = #imageLiteral(resourceName: "alluarjun8")
                 }
        if collectionView.tag == 1 {
            
                cell.pickOfActor.image = #imageLiteral(resourceName: "Maheshbabu4")
            
                  }
        if collectionView.tag == 2 {

                 cell.pickOfActor.image = #imageLiteral(resourceName: "surya7")
                 }
        if collectionView.tag == 3 {
                  
                 cell.pickOfActor.image = #imageLiteral(resourceName: "ram7")
                  
                 }
        if collectionView.tag == 4 {
                  
                 cell.pickOfActor.image = #imageLiteral(resourceName: "nitin8")
                  
              }
 
        if collectionView.tag == 5 {
                         
                cell.pickOfActor.image = #imageLiteral(resourceName: "nani8")
                         
                    }
   
        if collectionView.tag == 6 {
                              
               cell.pickOfActor.image = #imageLiteral(resourceName: "ram8")
                              
                        }
        if collectionView.tag == 7  {
                                    
                cell.pickOfActor.image = #imageLiteral(resourceName: "Prabhas")
                                    
                        }
           return cell
     }
     

    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    
        if collectionView.tag  == 0{
                  
                   print("AlluArjun\(indexPath.row)select")
                  
              }
        if collectionView.tag == 1 {
                  
                    print("MaheshBabu\(indexPath.row)select")
                  
              }
                       
        if collectionView.tag == 2 {
                              
                    print("Surya\(indexPath.row)select")
                              
                          }
        if collectionView.tag == 3 {
                        
                    print("RamCharan\(indexPath.row)select")
                        
                    }
        if collectionView.tag == 4 {
                        
                    print("Nitin\(indexPath.row)select")
                        
                    }
        
           
        if collectionView.tag == 5 {
                               
                   print("Nani\(indexPath.row)select")
                               
                           }
           
       
        if collectionView.tag == 6 {
                                  
                    print("Ram\(indexPath.row)select")
                                  
                              }
        if collectionView.tag == 7 {
                                               
                    print("Prabhas\(indexPath.row)select")
                                               
                                           }
    
           }
           
}
    
