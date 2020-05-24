//
//  FabricViewController.swift
//  Project Estimation
//
//  Created by 90308430 on 5/22/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class FabricViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var len = 0
    var area = 0
    var width = 0
    var price = 0
    func getArea(){
        
        area = len * width
        AreaLabel.text = String(area)
        
    }
    
    func getPrice(){
        price = area * 50 //Dummy Multiplier
        PriceLabel.text = String(price)
    }
    
    
    @IBAction func BackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var LengthLabel: UILabel!
    
    @IBOutlet weak var WidthLabel: UILabel!
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var AreaLabel: UILabel!
    @IBOutlet weak var LengthTextField: UITextField!
    
    @IBOutlet weak var WidthTextField: UITextField!
    @IBAction func WidthEntered(_ sender: Any) {
        WidthLabel.text = WidthTextField.text
         width = (WidthLabel.text! as NSString).integerValue
        if(len != 0 && width != 0){
                   getArea()
                   getPrice()
               }
         
    }
    @IBAction func LengthEntered(_ sender: Any) {
        LengthLabel.text = LengthTextField.text
               len = (LengthLabel.text! as NSString).integerValue
                      if(len != 0 && width != 0){
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
