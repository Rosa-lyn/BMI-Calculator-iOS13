//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rosalyn Land on 15/11/2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)

        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor(red: 173/255, green: 232/255, blue: 244/255, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle", color: UIColor(red: 181/255, green: 228/255, blue: 140/255, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pies", color: UIColor(red: 255/255, green: 153/255, blue: 200/255, alpha: 1))
        }
    }

    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiTo1DecimalPlace
    }

    func getadvice() -> String {
        return bmi?.advice ?? "No advice"
    }

    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
