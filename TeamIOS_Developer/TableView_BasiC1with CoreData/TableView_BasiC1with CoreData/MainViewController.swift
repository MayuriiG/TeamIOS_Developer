//
//  MainViewController.swift
//  TableView_BasiC1with CoreData
//
//  Created by Mayurii Gajbhiye on 27/12/19.
//  Copyright © 2019 q. All rights reserved.
//

import UIKit
import CoreData

class MainViewController: UIViewController, UIImagePickerControllerDelegate , UINavigationControllerDelegate {

    
    @IBOutlet weak var firstNTF: UITextField!
    
    @IBOutlet weak var lastNTF: UITextField!
    
    @IBOutlet weak var mobileNTF: UITextField!
    
    @IBOutlet weak var imageDisplayed: UIImageView!   //....(1)
    
    @IBOutlet weak var imageBtn: UIButton!            //.....(2)
    
    
    var appDeleg :AppDelegate!
    var mangObject: NSManagedObjectContext!
    var userDetailsEntity:NSEntityDescription!
    

    override func viewDidLoad() {
        super.viewDidLoad()


        appDeleg = UIApplication.shared.delegate as!AppDelegate
        mangObject  = appDeleg.persistentContainer.viewContext
    
//  ......................................(1)............. .............
    
        imageDisplayed.layer.borderWidth  = 1.0
        imageDisplayed.layer.borderColor = UIColor.white.cgColor
        imageDisplayed.layer.masksToBounds = false
        imageDisplayed.layer.cornerRadius  = imageDisplayed.frame.size.width/2
        imageDisplayed.clipsToBounds = true
//  ......................................(2)............. .............
        
        imageBtn.layer.borderWidth  = 1.0
        imageBtn.layer.borderColor = UIColor.white.cgColor
        imageBtn.layer.masksToBounds = false
        imageBtn.layer.cornerRadius = imageBtn.frame.size.width/2
        imageBtn.clipsToBounds = true
      imageBtn.addTarget(self, action: #selector(selectImagFromGallery), for: UIControl.Event.touchUpInside)
      
        
    }
//  ......................................(2)............. .............
        @objc func selectImagFromGallery(){
           
       let imageControl = UIImagePickerController()
            imageControl.delegate  = self
            imageControl.sourceType = .photoLibrary
            imageControl.allowsEditing = true
            present(imageControl, animated: true, completion: nil)
            
            
        }
        
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImg  = info[UIImagePickerController.InfoKey.editedImage]as! UIImage?{
            imageDisplayed.image  = pickedImg
        }
        
        dismiss(animated: true, completion: nil)

    
    }
    

    

    
    
    
    
    
    
    
    

    
    @IBAction func updateTappedBtn(_ sender: Any) {
    }
    
    
    
    @IBAction func saveTappedBtn(_ sender: Any) {
     
     
    userDetailsEntity  = NSEntityDescription.entity(forEntityName: "Logindetails", in: mangObject)
    // adding nsManagedObject instances to moc
            
//Cannot convert value of type 'Logindetails.Type' to expected argument type'NSEntityDescription'     (give in " ")
   
        let fetchLoginManged  = NSManagedObject(entity: userDetailsEntity , insertInto: mangObject)
     
      
        fetchLoginManged.setValue(firstNTF.text!, forKey: "firstname")
        fetchLoginManged.setValue(lastNTF.text!, forKey: "lastname")
       
        let pngimage = self.imageDisplayed.image?.pngData()
        print(pngimage!)
        fetchLoginManged.setValue(pngimage, forKey: "image")
            
        let mobileNumber = Int (mobileNTF.text!)
        fetchLoginManged.setValue(mobileNumber, forKey: "phoneNo")
        

        
        
        do{
            try mangObject.save()
            print("Saved Successfully")
            
        }
        catch{
            
            print("Unable  to Save Data")
             }

        
    }
    
    
}



