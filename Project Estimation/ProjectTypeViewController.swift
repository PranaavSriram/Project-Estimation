//
//  ProjectTypeViewController.swift
//  Project Estimation
//
//  Created by 90308430 on 5/22/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class ProjectTypeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BrickLayingButton(_ sender: Any) {
        performSegue(withIdentifier: "BrickLayingSegue", sender: self)
    }
    
    
    @IBAction func MulchingButton(_ sender: Any) {
        performSegue(withIdentifier: "MulchingSegue", sender: self)
        
    }
    
    
    @IBAction func SodRollButton(_ sender: Any) {
        performSegue(withIdentifier: "SodRollSegue", sender: self)
        
    }
    
    @IBAction func PlantingButton(_ sender: Any) {
        performSegue(withIdentifier: "PlantingSegue", sender: self)
        
    }
    
    @IBAction func BushRemovalButton(_ sender: Any) {
        performSegue(withIdentifier: "BushRemovalSegue", sender: self)
        
    }
    
    @IBAction func RockLayingButton(_ sender: Any) {
        performSegue(withIdentifier: "RockLayingSegue", sender: self)
        
    }
    
    @IBAction func EdgingButton(_ sender: Any) {
        performSegue(withIdentifier: "EdgingSegue", sender: self)
        
    }
    
    
    @IBAction func FabricButton(_ sender: Any) {
        performSegue(withIdentifier: "FabricSegue", sender: self)
    }
    
    @IBAction func TotalEstimation(_ sender: Any) {
        performSegue(withIdentifier: "NewProjectSegue", sender: self)
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
