//
//  ViewController.swift
//  BMI
//
//  Created by Chris Nassour on 2/21/17.
//  Copyright © 2017 CampusUser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var bmiResult: UILabel!
    
    @IBOutlet var bmiCat: UILabel!
    
    @IBOutlet var height_entry: UITextField!
    
    @IBOutlet var weight_entry: UITextField!
    
    @IBOutlet var top_Label: UILabel!
    
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
        bmiResult.text = String(format:"%.2f", bmi)
        
        if (bmi < 16.0) {
            bmiCat.text = "Severe Thinness"
        }
        else if (bmi >= 16.0 && bmi < 17.0) {
            bmiCat.text = "Moderate Thinness"
        }
        else if (bmi >= 17.0 && bmi < 18.50) {
            bmiCat.text = "Mild Thinness"
        }
        else if (bmi >= 18.49 && bmi < 25.0) {
            bmiCat.text = "Normal Range"
        }
        else if (bmi >= 25.0 && bmi < 30.0) {
            bmiCat.text = "Overweight"
        }
        else if (bmi >= 30 && bmi < 35.0) {
            bmiCat.text = "Obese Class I"
        }
        else if (bmi >= 35.0 && bmi < 40.0) {
            bmiCat.text = "Obese Class II"
        }
        else if (bmi >= 40) {
            bmiCat.text = "Obese Class III"
        }
        
    }

}

