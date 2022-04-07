//
//  ViewController.swift
//  Ganguru_BookCheckoutApp
//
//  Created by Ganguru,Rohith Sai on 4/7/22.
//

import UIKit

class AvalabilityCheckViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var BookID: UITextField!
    
    @IBOutlet weak var bookStatusLabel: UILabel!
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var checkoutBookButton: UIButton!
    
    var bookFound = Book()
    var bookArray = booksArray
    var isBook = false
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func checkoutBookAction(_ sender: Any) {
        let  bookid = BookID.text!
        name = username.text!
        
        for book in bookArray{
            if bookid != book.bookId{
                bookStatusLabel.text! = "Book Not Found"
                displayImage.isHidden = false
                checkoutBookButton.isHidden = true
                displayImage.image = UIImage(named: "")
            }
            else{
                print("In IF")
                bookFound = book
                isBook = true
                checkoutBookButton.isHidden = false
                displayImage.image = UIImage(named: book.bookImage)
                bookStatusLabel.text! = "Book with ID \(book.bookId) found!"
                break;
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "checkoutSegue"{
            let destination = segue.destination as! CheckoutConfirmationViewController
            
            if isBook{
                destination.bookObj = bookFound
                destination.name1 = name
            }
            
        }
    }
    
}

