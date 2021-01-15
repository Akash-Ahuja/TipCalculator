//
//  ViewController.swift
//  Prework 2.0
//
//  Created by Akash Ahuja on 1/14/21.
//  Copyright © 2021 Akash Ahuja. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var darkModeIsOn: UILabel!
    
    
    @IBAction func Switch(_ sender: UISwitch) {
        if sender.isOn {
            view.backgroundColor = .darkGray
        } else {
            view.backgroundColor = .brown
        }
    }
    
    @IBOutlet weak var billAmount: UITextField!
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    @IBOutlet weak var Reset: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billAmount.text!) ?? 0
        
        // Calculate the tip amount labels
        let tipPercentage = [0.15, 0.18, 0.20, 0.25, 0.00]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        // Update the tip and the total amount
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func Reset(_ sender: Any) {
        // Resets the calculator after entering the credentials
        
        let bill = Double(billAmount.text!) ?? 0
        let tip = 0.00
        let total = 0.00
        
        billAmount.text = String(format: "$%.0f", bill)
        tipLabel.text = String(format: "$%.0f", tip)
        totalLabel.text = String(format: "$%.0f", total)
    }
    
}

