//
//  ViewController.swift
//  razorPay_paymentGateway
//
//  Created by Mayurii Gajbhiye on 12/01/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit
import Razorpay


//REQUIREMENTS:
//1) INSTALL POD -
//2)GENERATE API KEY -RAZOR PAY - Make account
//3)WRITE STANDARD CODE
//4)INSERT API KEY - IN Override
//5)UCant Change- Prefill formate
//6) Nor -Colour & Theme



class ViewController: UIViewController {

    @IBOutlet weak var payNowBtn: UIButton!
    
    var razorPay:Razorpay!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     
        razorPay  = Razorpay.initWithKey("rzp_live_fvT7rQxmyrFgQj", andDelegate: self)
    }
    
//.....................................................................
    @IBAction func payNowbtn(_ sender: Any) {

//        let options:[String:Any] = [
//            "amount": "100",  //inpaisa
//            "description": "purchase description",
//            "image": "https://image.flaticon.com/icons/svg/124/124010.svg",
//            "name" : "myLogisticpay",
//
//            "prefill": [
////            "contacts" : "9994445679",
////            "emailId" : "food@Garage.com",
////                "emogis": "🙃"
//        ],
//            "themes": ["color" : "#F37354"]
    //]
        
//..................................................................
        let options: [String:Any] = [
    "amount": "100", //This is in currency subunits. 100 = 100 paise= INR 1.
    "currency": "INR",//We support more that 92 international currencies.
    "description": "Logistic Purchase ",
            //"order_id": "order_4xbQrmEoA5WJ0G",
            "image":UIImage(named: "FLOWER5")!,
    // "image": "https://image.flaticon.com/icons/svg/124/124010.svg",
    "name": "LOGISTIC" ,
       
        "prefill": [
        "contacts": "9797979797",
        "emailID": "foo@bar.com",
          "emogis": "🙃"
        ],
        
      "themes": [
            "color": "#5FC9F8"
                          ]
                      ]
  
        //razorPay.open(<#T##options: [AnyHashable : Any]##[AnyHashable : Any]#>)
        razorPay.open(options)
    }
    
    
}
//Alert for Error ................
extension ViewController:RazorpayPaymentCompletionProtocol{
    func onPaymentError(_ code: Int32, description str: String) {
        let paymentalert = UIAlertController(title:"Payment", message: "Payment Error", preferredStyle: UIAlertController.Style.actionSheet)
        let buttonOfAlert = UIAlertAction(title: "Error", style: UIAlertAction.Style.destructive, handler: nil)
        
        paymentalert.addAction(buttonOfAlert)
        present(paymentalert, animated: true, completion: nil)
    }
    
//Alert for Success..............
    func onPaymentSuccess(_ payment_id: String) {
          let paymentalert = UIAlertController(title:"Payment", message: "Payment Successfull", preferredStyle: UIAlertController.Style.actionSheet)
              let buttonOfAlert = UIAlertAction(title: "🙂", style: UIAlertAction.Style.destructive, handler: nil)
              
              paymentalert.addAction(buttonOfAlert)
              present(paymentalert, animated: true, completion: nil)
    }
    

}
