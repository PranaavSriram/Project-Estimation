//
//  EdgingViewController.swift
//  Project Estimation
//
//  Created by 90308430 on 5/22/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class EdgingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var length = 0
    var price = 0
    
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var LengthLabel: UILabel!
    @IBOutlet weak var LengthTextField: UITextField!
    
    //Code for the Back Button
    @IBAction func BackButton(_ sender: Any) {
           dismiss(animated: true, completion: nil)
       }
   
    //The price is determined by multiplying the desired area by an industry average multiplier. This will ensure that our estimation will be within normal range.
    func getPrice(){
        price = length * Int(1.25)
        PriceLabel.text = String(price)
    }
    
    //This function converts values entered as a string into the length text field into an integer value tp be represented in the length label
    @IBAction func LengthEntered(_ sender: Any) {
         LengthLabel.text = LengthTextField.text
                length = (LengthLabel.text! as NSString).integerValue
                       if(length != 0){
                           getPrice()
        }
     }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
