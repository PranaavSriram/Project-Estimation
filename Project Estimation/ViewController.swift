//
//  ViewController.swift
//  Project Estimation
//
//  Created by Pran on 5/7/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
// I touched up the UI
    @IBAction func Guide(_ sender: Any) {
        performSegue(withIdentifier: "GuideSegue", sender: self)}
    
    
    @IBAction func MyProjects(_ sender: Any) {
        performSegue(withIdentifier: "MyProjectsSegue", sender: self)
    }
    @IBAction func Settings(_ sender: Any) {
        performSegue(withIdentifier: "SettingsSegue", sender: self)
    }
    
    @IBAction func Creators(_ sender: Any) {
        performSegue(withIdentifier: "CreatorsSegue", sender: self)
    }
    
 
    
    
    
    
}

