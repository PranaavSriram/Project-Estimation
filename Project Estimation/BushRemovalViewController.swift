//
//  BushRemovalViewController.swift
//  Project Estimation
//
//  Created by 90308430 on 5/22/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class BushRemovalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    var small = 0
    var medium = 0
    var large = 0
    var price = 0
    
    //The price is determined by multiplying the desired bush size by an industry average multiplier. This will ensure that our estimation will be within normal range.
    func getPrice(){
        price = (small * 17.50) + (medium * 35.00) + (large * 52.50)
        PriceLabel.text = String(price)
    }
    @IBOutlet weak var PriceLabel: UILabel!
    @IBOutlet weak var SmallLabel: UILabel!
    @IBOutlet weak var MediumLabel: UILabel!
    @IBOutlet weak var LargeLabel: UILabel!
    @IBOutlet weak var SmallTextField: UITextField!
    @IBOutlet weak var MediumTextField: UITextField!
    @IBOutlet weak var LargeTextField: UITextField!
    
    
    @IBAction func BackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SmallEntered(_ sender: Any) {
        SmallLabel.text = SmallTextField.text
        small = (SmallLabel.text! as NSString).integerValue
        if(small != 0 || medium != 0 || large != 0){
                   
                   getPrice()
               }
    }
    
    @IBAction func MediumEntered(_ sender: Any) {
        MediumLabel.text = MediumTextField.text
        medium = (MediumLabel.text! as NSString).integerValue
        if(small != 0 || medium != 0 || large != 0){
                   
                   getPrice()
               }
    }
    
    @IBAction func LargeEntered(_ sender: Any) {
        LargeLabel.text = LargeTextField.text
        large = (LargeLabel.text! as NSString).integerValue
        if(small != 0 || medium != 0 || large != 0){
                   
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
