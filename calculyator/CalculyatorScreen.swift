//
//  CalculyatorScreen.swift
//  calculyator
//
//  Created by Tatina Dzhakypbekova on 20/1/24.
//

import Foundation

class CalculyatorScreen {
    
    let math = Math()
    var calculateTrue: Bool = true
    var result: String = ""
    var historyScreen: HistoryScreen
    
    init(historyScreen: HistoryScreen) {
        self.historyScreen = historyScreen
    }
    
    
    func calculate(){
        print ("Введите первое число: ")
        print ("Для выхода, введите 'q' ")
        
        if let input1 = readLine(), let number1 = Double(input1) {
            print("введите операцию (+, -, *, /):")
            if let operation = readLine() {
                print("Введите второе число:")
                if let input2 = readLine(), let number2 = Double(input2) {
                    performOperation(number1: number1, number2: number2, operation: operation)
                } else  {
                    stopCalculate()
                    print("Неправильное число")
                }
            }
        } else {
            stopCalculate()
            
        }
    }
    func performOperation(number1: Double, number2: Double, operation: String)  {
        switch operation {
        case "+":
            result = math.add(number1: number1, number2: number2)
            print(math.add(number1: number1, number2: number2))
            
        case "-":
            result = math.diff(number1: number1, number2: number2)
            
            print(math.diff(number1: number1, number2: number2))
            
        case "*":
            result = math.multiplay(number1: number1, number2: number2)
            print(math.multiplay(number1: number1, number2: number2))
            
        case "/":
            result = math.div(number1: number1, number2: number2)
            print(math.div(number1: number1, number2: number2))
            
        default: print ("Не правильная операция")
        }
        addToHistory()
    }
    
    func infiniteLoop() {
        while calculateTrue {
            calculate()
            
        }
    }
    
    func stopCalculate(){
        
        calculateTrue = false
        historyScreen.historyDisplay()
    }
    
    func addToHistory() {
        historyScreen.history.append(OperationDetail(description: result))
        
    }
}



