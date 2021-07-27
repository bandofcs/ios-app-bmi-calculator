//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by CSD on 27/7/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    var bmi:BMI?
    
    mutating func calculateBMI(height:Float,weight:Float){
        
        let bmiValue=weight/height/height
        switch bmiValue{
        case _ where bmiValue>=25.0:
            bmi=BMI(bmiValue:bmiValue,advice:"Eat less pies.",color:#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1))
        case 18.5..<25.0:
            bmi=BMI(bmiValue:bmiValue,advice:"You are good.",color:#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))
        case ..<18.5:
            bmi=BMI(bmiValue:bmiValue,advice:"Eat more pies.",color:#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
        default:
            print("Error")
        }
    }
    
    func getBMIValue()->String{
        //return 0.00 if bmi is nil else return after checking bmi is not nil
        return String(format:"%.2f", bmi?.bmiValue ?? "0.00")
    }
    func getColor()->UIColor{
        return bmi?.color ?? .systemPink
    }
    func getAdvise()->String{
        return bmi?.advice ?? "No advice"
    }
}
