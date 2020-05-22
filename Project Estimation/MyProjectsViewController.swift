//
//  MyProjectsViewController.swift
//  Project Estimation
//
//  Created by 90308430 on 5/22/20.
//  Copyright © 2020 Landscapers. All rights reserved.
//

import UIKit

class MyProjectsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func NewProjectButton(_ sender: Any) {
        
        performSegue(withIdentifier: "ProjectTypeSegue", sender: self)
    }
    

    @IBAction func LoadProjectButton(_ sender: Any) {
        performSegue(withIdentifier: "LoadProjectSegue", sender: self)
        
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