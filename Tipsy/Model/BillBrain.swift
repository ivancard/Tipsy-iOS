//
//  BillBrain.swift
//  Tipsy
//
//  Created by ivan cardenas on 25/02/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct BillBrain {

    var bill: Bill?

    mutating func calculateBill(_ bill: Double, _ percentageTip: Double, _ splitNumber: Double) {
        let tip = bill * percentageTip
        let totalToPay = (tip + bill) / splitNumber
        self.bill = Bill(initialBill: bill, splitPersons: Int(splitNumber), tipPercentage: percentageTip, totalToPay: totalToPay)
    }

    func getPercentajeTip(_ percentaje: String) -> Double {
        let buttonTitleMinusPercentSign =  String(percentaje.dropLast())
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentSign)!
        return buttonTitleAsANumber / 100
    }
}
