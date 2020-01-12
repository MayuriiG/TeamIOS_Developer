//
//  ViewController.swift
//  TableView_BasiC1with CoreData
//
//  Created by Mayurii Gajbhiye on 27/12/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
  
    @IBOutlet weak var viewOfTableView: UIView!
    
        var userLoginTableView:UITableView!
    
        var appDeleg :AppDelegate!
        var mangObject: NSManagedObjectContext!
        var userDetailsEntity:NSEntityDescription!
    
    var nameOfUser:[String] = [String]()  //display nameOfuser
    //var lastnameOfUser:[String] = [String]()
    var mobileNumOfUser:[Int] = [Int]()
    var imageOfData:[Data] = [Data]()
    var detailsOfEmptyStrng:String  =  " "

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
    creatUI()
        
    }

    override func viewWillAppear(_ animated: Bool) {
       

        appDeleg = UIApplication.shared.delegate as!AppDelegate
        mangObject  = appDeleg.persistentContainer.viewContext
        
        nameOfUser = [String]()
       //lastnameOfUser = [String]()
        mobileNumOfUser = [Int]()
        imageOfData = [Data]()
       
    let path  = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        print(path)
        
    let fetchData = NSFetchRequest<NSFetchRequestResult>(entityName: "Logindetails")

        do{
            
            let fetchMngeObj  = try mangObject.fetch(fetchData)
            for i in 0..<fetchMngeObj.count{
    let currentMangObj: NSManagedObject = fetchMngeObj[i]as!NSManagedObject
                
        let firstN = "\(currentMangObj.value(forKey: "firstname")!)"
        let lastN = "\(currentMangObj.value(forKey: "lastname")!)"
        let  fullN  = firstN + " " + lastN
            nameOfUser.append(fullN)
          
    mobileNumOfUser.append(Int(currentMangObj.value(forKey: "phoneNo")as? Int ?? 0))
                
    let serverImge  = currentMangObj.value(forKey: "image")as!Data
    imageOfData.append(serverImge)
                
        userLoginTableView.reloadData()
// Reloads everything from scratch. Redisplays visible rows. Note that this will cause any existing drop placeholder rows to be removed.
      
        print("Successfull")
                    
            }
            
            }catch{
            
            print("Error Occurs")
           }

        
       
    }
    
    //Creating table view ..programatically
    func creatUI(){
        userLoginTableView = UITableView(frame: viewOfTableView.frame, style: UITableView.Style.plain)
        
      //  viewOfTableView.constraints  =
        userLoginTableView.delegate  = self
        userLoginTableView.dataSource  = self
        
        viewOfTableView.addSubview(userLoginTableView)
    
    
    }

    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameOfUser.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell   = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "abccc")
        
//    let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "abcdefghi")
        cell.imageView?.image  = UIImage(data: imageOfData[indexPath.row])
        cell.textLabel?.numberOfLines = 0
        cell.textLabel?.text = nameOfUser[indexPath.row]
        cell.detailTextLabel?.text = "\(mobileNumOfUser[indexPath.row])"
        
        cell.accessoryType = .detailDisclosureButton
        cell.accessoryType = UITableViewCell.AccessoryType.detailDisclosureButton
        cell.accessoryView = UIView(frame: CGRect(x: 0, y: 0, width: 23, height: 23))
        cell.accessoryView!.backgroundColor = UIColor.green
      
        return cell
    }
 
}

