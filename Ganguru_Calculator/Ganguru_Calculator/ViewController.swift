//
//  ViewController.swift
//  Ganguru_Calculator
//
//  Created by Ganguru,Rohith Sai on 2/14/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayLabel: UILabel!
    
    var total1 = 0.0
    var total2 = 0.0
    var result = 0.0
    
    var oper = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.text = "0"
        // Do any additional setup after loading the view.
    }

    @IBAction func button1(_ sender: UIButton) {
        valueConvertion(v:"1")
    }
    
    @IBAction func button2(_ sender: UIButton) {
        valueConvertion(v:"2")
    }
    
    @IBAction func button3(_ sender: UIButton) {
        valueConvertion(v:"3")
    }
    
    @IBAction func button4(_ sender: UIButton) {
        valueConvertion(v:"4")
    }
    
    @IBAction func button5(_ sender: UIButton) {
        valueConvertion(v:"5")
    }
    
    @IBAction func button6(_ sender: UIButton) {
        valueConvertion(v:"6")
    }
    
    @IBAction func button7(_ sender: UIButton) {
        valueConvertion(v:"7")
    }
    
    @IBAction func button8(_ sender: UIButton) {
        valueConvertion(v:"8")
    }
    
    @IBAction func button9(_ sender: UIButton) {
        valueConvertion(v:"9")
    }
    
    @IBAction func button0(_ sender: UIButton) {
        valueConvertion(v:"0")
    }
    
    @IBAction func buttonDecimal(_ sender: UIButton) {
        displayLabel.text = displayLabel.text! + "."
    }
    
    @IBAction func buttonAdd(_ sender: UIButton) {
        oper = "+"
        total1 = Double(displayLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonSubtract(_ sender: UIButton) {
        if(displayLabel.text == "0" || displayLabel.text == ""){
            valueConvertion(v:"-")
        }
        else {
            oper = "-"
            total1 = Double(displayLabel.text!)!
            clearText()
        }
        
    }
    
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        oper = "*"
        total1 = Double(displayLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        oper = "/"
        total1 = Double(displayLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonModuloDivision(_ sender: UIButton) {
        oper = "%"
        total1 = Double(displayLabel.text!)!
        clearText()
    }
    
    @IBAction func buttonChangeSign(_ sender: UIButton) {
        let count = displayLabel.text!.count
        if(count <= 1){
            displayLabel.text = "-"+displayLabel.text!
        }
        else{
            let op = displayLabel.text!.removeFirst();
            print("OP is \(op)")
            if(op == "-"){
                displayLabel.text = displayLabel.text!.replacingOccurrences(of: "-", with: "")
            }
        }
    }
    
    @IBAction func buttonEqual(_ sender: UIButton) {
        total2 = Double(displayLabel.text!)!
        
        switch oper {
        case "+":
            result = total1+total2
            roundValue(r:result)
        case "-":
            result = total1-total2
            roundValue(r:result)
        case "*":
            result = total1*total2
            roundValue(r:result)
        case "/":
            if(total2 == 0)
            {
                displayLabel.text = "Error"
            }
            else{
            result = Double(total1/total2)
                roundValue(r:round(result * 100000) / 100000.0)
            }
        case "%":
            result =  total1.truncatingRemainder(dividingBy: total2)
            roundValue(r:round(result * 100) / 100.0)
        default:
            displayLabel.text = "ERROR"
        }
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        total2=0
        displayLabel.text=""
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        clearText()
    }
    
    func clearText(){
        displayLabel.text = ""
    }
    
    func roundValue(r: Double){
        if(r.truncatingRemainder(dividingBy: 1) == 0.0){
            displayLabel.text = String(Int(r))
        }
        else{
        displayLabel.text = String(r)
        }
    }
    func valueConvertion(v: String)
    {
        if(displayLabel.text! == "0")
        {
        displayLabel.text =  v
        }
        else{
            displayLabel.text = displayLabel.text! + v
        }
    }
}

