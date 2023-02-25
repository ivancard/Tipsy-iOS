//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by ivan cardenas on 25/02/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var bill: Bill?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settigsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let tipPercentage = bill?.tipPercentage else {return}
        guard let splitPersons = bill?.splitPersons else {return}
        guard let totalToPay = bill?.totalToPay else {return}

        totalLabel.text = String(format: "%.2f", totalToPay)

        let percentageText: String = String(format: "%.0f", tipPercentage * 100.0)
        
        settigsLabel.text = "Split between \(splitPersons) people, with \(percentageText)% tip."
    }

    @IBAction func recalculateAction(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
