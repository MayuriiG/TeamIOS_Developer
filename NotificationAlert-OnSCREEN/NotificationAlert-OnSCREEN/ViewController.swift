//
//  ViewController.swift
//  NotificationAlert-OnSCREEN
//
//  Created by Mayurii Gajbhiye on 13/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var email_id: UITextField!
    
    
    @IBOutlet weak var password: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        
        UNUserNotificationCenter.current().delegate = self
  
    }

    
    @IBAction func getNotification(_ sender: Any) {

    localNotification()
    }

    
//Local Notification ..see in appdelegate first

        func localNotification(){
              let content = UNMutableNotificationContent()
              content.title = "Techno World"
              content.subtitle = "Message😉"
              content.body = "Welcome Employee's"
              
              content.sound = UNNotificationSound.default
              
              let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2.0, repeats: false)
              
              let request = UNNotificationRequest(identifier: "Identifier", content: content, trigger: trigger)
              
              UNUserNotificationCenter.current().add(request) { (error) in
                  print(error as Any)
              }
              
          }
     
    }

    extension ViewController:UNUserNotificationCenterDelegate{
        
        func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
            
            
            completionHandler([.alert,.sound,.badge])
            
        }

}

