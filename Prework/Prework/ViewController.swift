//
//  ViewController.swift
//  Prework
//
//  Created by Brandon A Bustamante on 2/3/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill from text input
        // google what the ?? 0 does
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // tip logic
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // output tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // updated total amount
        totalLabel.text = String(format: "$%.2f", total)
    }

}

