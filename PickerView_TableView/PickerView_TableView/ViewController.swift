//
//  ViewController.swift
//  PickerView_TableView
//
//  Created by Mayurii Gajbhiye on 14/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
   
    
    var arrrCities = ["NewDelhi","Mumbai","Banglore","Pune","Nagpur","Chennai","Hydrabad","Kerala","Gurgram","Jaipur","Goa","Raipur","Jodhpur","Madhurai","Mysor","Patiala","Alwar","Shimla"]
  
    @IBOutlet weak var flexibleToolbar: UIToolbar!
    
    
    @IBOutlet weak var pickrView: UIPickerView!
    
    @IBOutlet weak var lblCitites: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.pickrView.delegate = self
        self.pickrView.dataSource = self
        //self.pickrView.hi

        self.pickrView.isHidden = true
        self.flexibleToolbar.isHidden = true

    }

    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
           
        return 1
       }
       
       func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrrCities.count
       }
    
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.arrrCities[row]
    }

    
    
    
    @IBAction func btnOpenAction(_ sender: UIButton) {
  
        
        self.flexibleToolbar.isHidden = false
         self.pickrView.isHidden = false


    
    }
    
    @IBAction func doneActn(_ sender: Any) {
        
self.lblCitites.text = self.arrrCities[self.pickrView.selectedRow(inComponent: 0)]
        self.flexibleToolbar.isHidden = true
        self.pickrView.isHidden = true
    
    
    }
    
    
}

