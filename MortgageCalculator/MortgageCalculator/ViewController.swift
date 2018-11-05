//
//  ViewController.swift
//  MortgageCalculator
//
//  Created by student on 10/22/18.
//  Copyright © 2018 HOTT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var principalTextField: UITextField!
    
    @IBOutlet weak var interestRateTextField: UITextField!
    
    @IBOutlet weak var loanLengthTextField: UITextField!
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func CalculateButtonTap(_ sender: UIButton) {
        let principal = Double(principalTextField.text!)!
        let interestRate = Double(interestRateTextField.text!)!
        let loanLength = Double(loanLengthTextField.text!)!
        
        let payment = (principal * interestRate/1200.0) /
            (1.0 - pow(1.0 + interestRate/1200.0, -loanLength * 12.0))
        
        resultsLabel.text = String(format: "Payment: $%.2f", payment)
        
    }
    


}


