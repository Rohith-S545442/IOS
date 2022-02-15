//
//  ViewController.swift
//  Ganguru_Calculator
//
//  Created by Ganguru,Rohith Sai on 2/14/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayLabel: UILabel!
    
    var total1 = 0
    var total2 = 0
    var result = 0
    var result1 = 0.0
    
    var oper = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "1"
    }
    
    @IBAction func button2(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "2"
    }
    
    @IBAction func button3(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "3"
    }
    
    @IBAction func button4(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "4"
    }
    
    @IBAction func button5(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "5"
    }
    
    @IBAction func button6(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "6"
    }
    
    @IBAction func button7(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "7"
    }
    
    @IBAction func button8(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "8"
    }
    
    @IBAction func button9(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "9"
    }
    
    @IBAction func button0(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "0"
    }
    
    @IBAction func buttonDecimal(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "."
    }
    
    @IBAction func buttonAdd(_ sender: UIButton) {
        oper = "+"
        total1 = Int(displayLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonSubtract(_ sender: UIButton) {
        if(displayLabel.text == ""){
            displayLabel.text = displayLabel.text! + "-"
        }
        else {
            oper = "-"
            total1 = Int(displayLabel.text!)!
            clearText()
        }
        
    }
    
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        oper = "*"
        total1 = Int(displayLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        oper = "/"
        total1 = Int(displayLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonModuloDivision(_ sender: UIButton) {
        oper = "%"
        total1 = Int(displayLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonChangeSign(_ sender: UIButton) {
        if(oper == "+"){
            oper = "-"
        }
        else{
            oper = "+"
        }
    }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        total2 = Int(displayLabel.text!)!
        
        switch oper {
        case "+":
            result = total1+total2
            displayLabel.text = String(result)
        case "-":
            result = total1-total2
            displayLabel.text = String(result)
        case "*":
            result = total1*total2
            displayLabel.text = String(result)
        case "/":
            if(total2 == 0)
            {
                displayLabel.text = "Error"
            }
            else{
            result1 = Double(total1/total2)
            displayLabel.text = String(result)
            }
        case "%":
            result = total1%total2
            displayLabel.text = String(result)
        default:
            displayLabel.text = "ERROR"
        }
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        displayLabel.text = "0"
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        clearText()
    }
    
    func clearText(){
        displayLabel.text = ""
    }
}

