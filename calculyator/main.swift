//
//  main.swift
//  calculyator
//
//  Created by Tatina Dzhakypbekova on 20/1/24.
//

import Foundation

let historyScreen = HistoryScreen()
let calculatorScreen = CalculyatorScreen(historyScreen: historyScreen)
calculatorScreen.infiniteLoop()



