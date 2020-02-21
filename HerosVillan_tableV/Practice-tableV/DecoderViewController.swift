//
//  DecoderViewController.swift
//  Practice-tableV
//
//  Created by Mayurii Gajbhiye on 20/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class DecoderViewController: UIViewController {

    @IBOutlet weak var decoderTV: UITableView!
    
    
    var data = [HerosVillan]()
    var villanArr =  [String]()
  
    override func viewDidLoad() {
        super.viewDidLoad()
 
        dataFromServer()
        
        decoderTV.delegate = self
        decoderTV.dataSource = self
    }
    
//
    //var localized_Name : String!
    func dataFromServer(){
        
       // var data = DecoderData.delegateDatas.decodeServerData()
     data = DecoderData.delegateDatas.decodeServerData()
        
       // print(data)
        
        for i in 0..<data.count{
            
        villanArr.append(data[i].localized_name)
       // var dataArray = data[i]
            
            //print(villanArr)
        
    }
    
    
   print(villanArr)
    }
    
}
extension DecoderViewController:UITableViewDataSource,UITableViewDelegate{
   
    
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return villanArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text  = villanArr[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let nextVC = storyboard?.instantiateViewController(identifier: "DetailDecoderViewController")as! DetailDecoderViewController


        nextVC.serverDataPassing = data
        nextVC.j = indexPath.row//(see in detaildecoder)
//                nextVC.herosName = actorsName
//            nextVC.i = indexPath.row
    present(nextVC, animated: true, completion: nil)
          
    print("Navigated Successfully")
     
    
    }
        
}
