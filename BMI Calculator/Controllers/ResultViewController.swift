//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by CSD on 27/7/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviseLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    var bmiValue:String?
    var color:UIColor?
    var advice:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text=bmiValue
        view.backgroundColor=color
        adviseLabel.text=advice
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    


}
