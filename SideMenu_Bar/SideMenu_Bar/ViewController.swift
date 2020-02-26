//
//  ViewController.swift
//  SideMenu_Bar
//
//  Created by Mayurii Gajbhiye on 16/12/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{

    
    
    var arrdata = ["UserName","E-mail","Password","MobileNo","Logout"]
  
    var arrImage  = [#imageLiteral(resourceName: "1"),#imageLiteral(resourceName: "2"),#imageLiteral(resourceName: "7"),#imageLiteral(resourceName: "6"),#imageLiteral(resourceName: "5")]
    
    
    @IBOutlet weak var sideView: UIView!
    
    @IBOutlet weak var tablerViewContent: UITableView!
    
    
    
    var isSideViewOpen:Bool = false
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    
        sideView.isHidden = true
       // tablerViewContent.backgroundColor = UIColor.groupTableViewBackground
        isSideViewOpen = false
    }
    
    
    
    @IBAction func btnTapped(_ sender: Any) {
    
      //  tablerViewContent.isHidden = false
     //   sideView.isHidden = true
       
   // self.view.bringSubviewToFront(sideView) //subview on view appear
      
        if  isSideViewOpen == false {
            
            isSideViewOpen = true
            
            sideView.isHidden = false //open
     
        
        }else {

            
         //   tablerViewContent.isHidden = true
            sideView.isHidden = true
            
            isSideViewOpen = false
    
//        sideView.frame = CGRect(x: 0, y: 88, width: 275, height: 475)
//
//        tablerViewContent.frame = CGRect(x: 0, y: 0, width: 275, height: 475)
//            UIView.setAnimationDuration(0.3)
//            UIView.setAnimationDelegate(self)
//            UIView.beginAnimations("TableAnimation", context: nil)
//
//                     isSideViewOpen = true
//                                sideView.frame = CGRect(x: 0, y: 88, width: 275, height: 475)
//
//                     tablerViewContent.frame = CGRect(x: 0, y: 0, width: 275, height: 475)
            
            
            
            
        }
    
    }
    

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrdata.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! LogicTableViewCell
      
            cell.pikView.image = arrImage[indexPath.row]
            cell.lbl.text = arrdata[indexPath.row]
    return cell
    
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    //

}

