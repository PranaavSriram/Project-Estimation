//
//  SettingsViewController.swift
//  Project Estimation
//
//  Created by 90308430 on 5/22/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Code for the Back Button
    @IBAction func BackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var Units: UILabel!
    
    //This function is intended to change the units of measurement into Metric measurments
    @IBAction func Metric(_ sender: Any) {
        Units.text = "Now in Meters"
    }
    
    //This function is intended to change the units of measurement into American measurments
    @IBAction func American(_ sender: Any) {
        Units.text = "Now in Feet"
    }
    
    /*// MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
