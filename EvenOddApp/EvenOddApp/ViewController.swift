//
//  ViewController.swift
//  EvenOddApp
//
//  Created by Ganguru,Rohith Sai on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberField: UITextField!
 
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        let val = numberField.text!;
        let a = Int(val) ?? 0
        var sum=0;
        if(a%2 == 0){
            resultLabel.text = "\(a) is even number"
        }
        else{
            resultLabel.text = "\(a) is odd number"
        }
//        for i in 1...a {
//            if(a%i == 0){
//                sum=sum+i;
//            }
//        }
//        if(sum == a){
//            resultLabel.text = "\(a) is multiple of 3"
//        }
//        else{
//            resultLabel.text = "\(a) is not multiple of 3"
//        }
    }
    
}

