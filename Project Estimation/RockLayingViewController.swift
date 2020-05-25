//
//  RockLayingViewController.swift
//  Project Estimation
//
//  Created by 90308430 on 5/22/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class RockLayingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var length = 0
    var area = 0
    var width = 0
    var price = 0
    
    //This function simply calculates the area
    func getArea(){
        
        area = length * width
        AreaLabel.text = String(area)
        
    }
    
    //The price is determined by multiplying the desired area by an industry average multiplier. This will ensure that our estimation will be within normal range.
    func getPrice(){
        price = area * Int(33.33)
        PriceLabel.text = String(price)
    }
    
    //Code for the Back Button
    @IBAction func BackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var LengthLabel: UILabel!
    @IBOutlet weak var WidthLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var AreaLabel: UILabel!
    @IBOutlet weak var LengthTextField: UITextField!
    @IBOutlet weak var WidthTextField: UITextField!
    
    //This function converts values entered as a string into the width text field into an integer value tp be represented in the width label
    @IBAction func WidthEntered(_ sender: Any) {
        WidthLabel.text = WidthTextField.text
         width = (WidthLabel.text! as NSString).integerValue
        if(length != 0 && width != 0){
                   getArea()
                   getPrice()
               }
         
    }
    
    //This function converts values entered as a string into the length text field into an integer value tp be represented in the length label
    @IBAction func LengthEntered(_ sender: Any) {
        LengthLabel.text = LengthTextField.text
               length = (LengthLabel.text! as NSString).integerValue
                      if(length != 0 && width != 0){
                          getArea()
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
