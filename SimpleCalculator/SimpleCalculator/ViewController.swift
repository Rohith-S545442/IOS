//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Ganguru,Rohith Sai on 1/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    var operand1 = -1.1;
    var operand2 = -1.1
    var calcOperator = " "
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Button6(_ sender: UIButton) {
        //if(displayLabel.text == " "){
        displayLabel.text = displayLabel.text! + "6"
        if(operand1 == -1.1){
            operand1 = 6
        }
        else{
            operand2 = 6
        }
//    }
//        else{
//            displayLabel.text = " "
//        }
    }
    
    @IBAction func Button9(_ sender: UIButton) {
        //if(displayLabel.text != " "){
        displayLabel.text = displayLabel.text! + "9"
        if(operand2 == -1.1){
            operand2 = 9
        }
        else{
            operand1 = 9
        }
//        }
//        else{
//            displayLabel.text = " "
//        }
    }
    
    @IBAction func ButtonPlus(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "+"
        if(calcOperator == " "){
            calcOperator = "+"
        }
    }
    
    @IBAction func ButtonEqual(_ sender: Any) {
        displayLabel.text = displayLabel.text! + "="
        if(calcOperator == "+"){
            displayLabel.text = displayLabel.text! + "\(operand1 + operand2)"
        }
    }
    
    @IBAction func ButtonReset(_ sender: UIButton) {
        displayLabel.text=" "
    }
}

