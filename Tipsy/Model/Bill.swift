//
//  Bill.swift
//  Tipsy
//
//  Created by ivan cardenas on 25/02/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Bill {
    let initialBill: Double
    let splitPersons: Int
    let tipPercentage: Double
    let totalToPay: Double

    init(initialBill: Double, splitPersons: Int, tipPercentage: Double, totalToPay: Double) {
        self.initialBill = initialBill
        self.splitPersons = splitPersons
        self.tipPercentage = tipPercentage
        self.totalToPay = totalToPay
    }
}
