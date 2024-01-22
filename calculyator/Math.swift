//
//  Math.swift
//  calculyator
//
//  Created by Tatina Dzhakypbekova on 20/1/24.
//

import Foundation

class Math {
    
    func add (number1: Double, number2: Double) -> String {
        let result = "\(number1) + \(number2) = \(number1 + number2)"
        
        return result
        
    }
    func diff (number1: Double, number2: Double) -> String {
        let result = "\(number1) - \(number2) = \(number1 - number2)"
        
        return result
        
    }
    func multiplay (number1: Double, number2: Double) -> String {
        let result = "\(number1) * \(number2) = \(number1 * number2)"
        return result
        
    }
    func div (number1: Double, number2: Double) -> String {
        
        if number2 != 0 {
            let result = "\(number1) / \(number2) = \(number1 / number2)"
            return result
        } else {
            print("На ноль делить нельзя")}
        return "Введите корректное число для деления"
        
        
    }
}
