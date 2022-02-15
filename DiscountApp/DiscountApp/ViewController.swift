//
//  ViewController.swift
//  DiscountApp
//
//  Created by Ganguru,Rohith Sai on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountText: UITextField!
    
    @IBOutlet weak var discountText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonSubmit(_ sender: UIButton) {
        let amount = Double(amountText.text!)!
        let discount = Double(discountText.text!)!
        displayLabel.text = String(amount - (amount*(discount/100)))
    }
    
    @IBOutlet weak var displayLabel: UILabel!
}

