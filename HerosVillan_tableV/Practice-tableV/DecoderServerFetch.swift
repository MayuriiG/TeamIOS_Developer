//
//  DecoderServerFetch.swift
//  Practice-tableV
//
//  Created by Mayurii Gajbhiye on 20/02/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit

class DecoderData: NSObject {
   
      
     var URLRequestObj:URLRequest!
     
     var dataTaskObject: URLSessionDataTask!
     
   
  //singleton
   
    static var delegateDatas : DecoderData  = DecoderData()
     
    
    func decodeServerData() ->[ HerosVillan] {
       
      var convertedData:[HerosVillan]!
    
      URLRequestObj = URLRequest(url:URL(string: "https://api.opendota.com/api/heroStats")!)
    
       // URLRequestObj.httpMethod = "GET"
      dataTaskObject = URLSession.shared.dataTask(with: URLRequestObj, completionHandler: { (data, response, error) in
          
          print("Fletching Data from Server")
   
        
        do{
          var decoder = JSONDecoder()
         
        convertedData = try decoder.decode([HerosVillan].self, from: data!)
          
    
        
        }catch{
              print("Something Went Wrong")//catch block is use to catch the data thrown by "do"
              }
        
        
      })
        
          dataTaskObject.resume()
          
          while convertedData == nil {
          
         }
      
          return convertedData
      }
      
}
