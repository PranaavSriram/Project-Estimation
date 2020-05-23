//
//  GuideViewController.swift
//  Project Estimation
//
//  Created by 90308430 on 5/22/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController {
    @IBOutlet weak var Shovel: UIImageView!
    
    @IBOutlet weak var Description: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CasualButton(_ sender: Any) {
        Shovel.image = UIImage(named: "Shovel 1")
    }
    
    @IBAction func CommercialButton(_ sender: Any) {
        Shovel.image = UIImage(named: "Shovel Cross")
        
    }
    
    
    @IBAction func ProfessionalButton(_ sender: Any) {
        Shovel.image = UIImage(named: "Shovel Triple")
        
    }
    
    @IBAction func BackButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
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
