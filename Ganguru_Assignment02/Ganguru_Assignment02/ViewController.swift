//
//  ViewController.swift
//  Ganguru_Assignment02
//
//  Created by Ganguru,Rohith Sai on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var detailsLabel: UILabel!
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    @IBOutlet weak var initialsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        let firstName = firstNameTextField.text!
        let lastName = lastNameTextField.text!
        detailsLabel.text = "Details"
        fullNameLabel.text = """
Full Name : \(lastName), \(firstName)
"""
        initialsLabel.text = "Initials : \(firstName[firstName.startIndex])\(lastName[lastName.startIndex])"
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        firstNameTextField.text=""
        lastNameTextField.text=""
        detailsLabel.text=""
        fullNameLabel.text=""
        initialsLabel.text=""
        firstNameTextField.becomeFirstResponder()
    }
}

