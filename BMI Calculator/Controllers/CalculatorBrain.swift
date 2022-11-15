//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rosalyn Land on 15/11/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float = 0.0

    mutating func calculateBMI(height: Float, weight: Float) {
        bmi = weight / pow(height, 2)
    }

    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi)
        return bmiTo1DecimalPlace
    }
}
