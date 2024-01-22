//
//  HistoryScreen.swift
//  calculyator
//
//  Created by Tatina Dzhakypbekova on 20/1/24.
//

import Foundation

class HistoryScreen {
    
    var history: [OperationDetail] = []
    
    func printHistory() {
        
        for (index, operation) in history.enumerated() {
            print("\(index): \(operation.description)")
        }
    }
    
    func historyDisplay() {
        print("Показать историю? Введите (y/n)")
        if let inputChoice = readLine() {
            switch inputChoice.lowercased() {
            case "y":
                printHistory()
            case "n":
                print("До скорой встречи")
            default:
                print("Введите корректный символ (y/n)")
            }
        }
        removeFromHistory()
    }
    
    func removeFromHistory() {
        print("Введите индекс элемента для удаления")
        
        guard let input = readLine(), let selectedIndex = Int(input) else {
            print("Некорректный ввод")
            return
        }
        
        if selectedIndex >= 0 && selectedIndex < history.count {
            history.remove(at: selectedIndex)
            print("Запись удалена")
            printHistory()
        } else {
            print("Некорректный индекс")
        }
    }
}
