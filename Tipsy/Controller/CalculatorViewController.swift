//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    var billBrain = BillBrain()
    
    var total: Double?
    var percentaje: Double = 1.0
    var splitNumber: Double = 2.0

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPercentButton: UIButton!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!

    @IBAction func tipChanged(_ sender: UIButton) {
        sender.endEditing(true)
        guard let titleButton = sender.currentTitle else {return}

        zeroPercentButton.isSelected = false
        tenPercentButton.isSelected = false
        twentyPercentButton.isSelected = false
        sender.isSelected = true

        percentaje = billBrain.getPercentajeTip(titleButton)
    }

    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = sender.value
        splitNumberLabel.text = "\(Int(splitNumber))"
    }

    @IBAction func calculateAction(_ sender: UIButton) {
        guard let bill = billTextField.text else {return}
        if  let numberBill = Double(bill) {
            billBrain.calculateBill(numberBill, percentaje, splitNumber)
        }
        performSegue(withIdentifier: "goToResult", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultsController =  segue.destination as? ResultsViewController else {return}
        resultsController.bill = billBrain.bill
    }
}

