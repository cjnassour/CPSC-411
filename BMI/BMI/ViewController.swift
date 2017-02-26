//
//  ViewController.swift
//  BMI
//
//  Created by CampusUser on 2/21/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bmiResult: UILabel!
    
    @IBOutlet var bmiCat: UILabel!
    
    @IBOutlet var height_entry: UITextField!
    
    @IBOutlet var weight_entry: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //Actions
    @IBAction func calcBMI(_ sender: Any) {
        let height = Double(height_entry.text!)
        let weight = Double(weight_entry.text!)
        let bmi = weight!/(height! * height!)
        bmiResult.text = String(bmi)
        
        
    }

}

