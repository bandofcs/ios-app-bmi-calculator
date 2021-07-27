//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain=CalculatorBrain()
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightLabel.text="\(String(format: "%.2f",sender.value))m"
    }
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightLabel.text="\(String(format: "%.0f",sender.value))Kg"
    }
    
    @IBAction func calculatePress(_ sender: UIButton) {
        calculatorBrain.calculateBMI(height:heightSlider.value,weight:weightSlider.value)

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    //This function is called everytime performsegue method is called by any segue.identifier
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //In the event that there are many viewcontrollers to transit to, always check
        if segue.identifier=="goToResult"{
            //Create a reference to the resultviewcontroller, as! is for downcast as resultviewcontroller is subclass to UIViewcontroller super class
            let destinationVC=segue.destination as! ResultViewController
            destinationVC.bmiValue=calculatorBrain.getBMIValue()
            destinationVC.color=calculatorBrain.getColor()
            destinationVC.advice=calculatorBrain.getAdvise()
            
        }
    }
    
    
}

