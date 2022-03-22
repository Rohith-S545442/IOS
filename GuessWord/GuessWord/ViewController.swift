//
//  ViewController.swift
//  GuessWord
//
//  Created by Ganguru,Rohith Sai on 2/22/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DisplayLabel: UILabel!
    
    @IBOutlet weak var HintLabel: UILabel!
    
    @IBOutlet weak var letterEntered: UITextField!
    
    @IBOutlet weak var CheckButton: UIButton!
    
    @IBOutlet weak var StatusLabel: UILabel!
    
    @IBOutlet weak var PlayAgainButton: UIButton!
    
    var words = [["Java", "Programming Language"],
                 ["Guntur", "Famous for Mirchi"],
                 ["Bandi", "IOS Professor Surname"],
                 ["Dhoni", "Cricketer Jersey No.7"]]
    
    var count = 0;
    var word = ""
    var lettersGuessed = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Check button should be disabled.
        CheckButton.isEnabled=false
        //Get the first word from the array
        word = words[count][0]
        
        DisplayLabel.text = ""
        
        //Populate the display label with the underscores. The # of underscores is equal to the # of characters in the word.
        updateUnderscores();
        
        //Get the first hint from the array
        HintLabel.text = "Hint : "+words[count][1]
                
        //Clear the status label intially.
        StatusLabel.text = ""
    }

    @IBAction func CheckButtonClicked(_ sender: Any) {
        //Get the text from the text field.
        var letter = letterEntered.text!
                
        //Replace the guessed letter if the letter is part of the word.
        lettersGuessed = lettersGuessed + letter
         var revealedWord = ""
        for l in word {
            if lettersGuessed.contains(l){
                revealedWord += "\(l)"
            }
            else{
                revealedWord += "_"
            }
        }
        //Assigning the word to displaylabel after a guess
        DisplayLabel.text = revealedWord
        letterEntered.text = ""
        //If the word is guessed correctly, we are enabling play again button and disabling the check button.
        if DisplayLabel.text!.contains("_") == false{
            
        }
    }
    
    @IBAction func PlayAgainButtonClicked(_ sender: UIButton) {
        
    }
    
    
    @IBAction func enterLabelChanged(_ sender: UITextField) {
        
    }
    
    func updateUnderscores(){
            for letter in word{
                DisplayLabel.text! += "- "
            }
        }
}

