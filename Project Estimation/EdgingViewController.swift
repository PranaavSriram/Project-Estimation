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
    var len = 0
    
    var price = 0
     @IBOutlet weak var PriceLabel: UILabel!
        @IBOutlet weak var LengthLabel: UILabel!
    func getPrice(){
        price = len * 50 //Dummy Multiplier
        PriceLabel.text = String(price)
    }
    

    @IBAction func BackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
        @IBOutlet weak var LengthTextField: UITextField!
    @IBAction func LengthEntered(_ sender: Any) {
         LengthLabel.text = LengthTextField.text
                len = (LengthLabel.text! as NSString).integerValue
                       if(len != 0){
                           
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
