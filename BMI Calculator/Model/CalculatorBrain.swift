//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Evan Chang on 8/22/20.
//  Copyright © 2020 Evan Chang. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var BMIValue: Float = 0.0

    
    
    mutating func calcuateBMI(height: Float, weight: Float) {
         BMIValue = weight / (height * height) // weigtht/pow(height, 2)
    //    BMIValue = String(format: "%.1f", BMI)
    }
    
    
    func getValue() -> String {
        let BMI = String(format: "%.1f", BMIValue)
        return BMI
        
    }
}

