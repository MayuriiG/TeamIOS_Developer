//
//  Json.swift
//  Practice-tableV
//
//  Created by Mayurii Gajbhiye on 20/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class Json: NSObject {
   
    var URLReqObj:URLRequest!

     var dataTaskObj:URLSessionDataTask!

       static var delegateDatas : Json  = Json()
   

    func loginDetails(dataToSend:String) ->[String:String]{

     
        var convertedData:[String:String]!
     
URLReqObj = URLRequest(url:URL(string:"https://api.opendota.com/api/heroStats")!)

       URLReqObj.httpMethod = "POST"

//       var dataToSend = "registeredEmail=gautami.priya01@gmail.com&registeredPassword=rohith12345&funcName=verifyLogin"

       URLReqObj.httpBody = dataToSend.data(using: String.Encoding.utf8)
   dataTaskObj = URLSession.shared.dataTask(with: URLReqObj, completionHandler: {( data, connDetails , err) in

           print("got data from server")

           do{

        convertedData = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as![String:String]

               print(convertedData)

           }

           catch{

               print("Something went wrong")

           }

       })

       

       dataTaskObj.resume()

       
              while convertedData == nil {
                                     
                                    
              }
                                 
                                 
              return convertedData


         }
}
