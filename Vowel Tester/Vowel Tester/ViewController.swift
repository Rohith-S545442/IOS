//
//  ViewController.swift
//  Vowel Tester
//
//  Created by Ganguru,Rohith Sai on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        var enteredText = textOutlet.text!
        if(enteredText.contains("a") || (enteredText.contains("e")) || (enteredText.contains("i")) || (enteredText.contains("o")) || (enteredText.contains("u"))){
            displayLabel.text = "The text \(enteredText) has vowel"
            
        }
        else{
            displayLabel.text = "The text \(enteredText) didn't have vowel"
        }
        
    }
}

