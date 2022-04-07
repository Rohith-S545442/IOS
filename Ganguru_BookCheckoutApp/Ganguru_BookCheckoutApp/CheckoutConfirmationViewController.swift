//
//  CheckoutConfirmationViewController.swift
//  Ganguru_BookCheckoutApp
//
//  Created by Ganguru,Rohith Sai on 4/7/22.
//

import UIKit

class CheckoutConfirmationViewController: UIViewController {

    @IBOutlet weak var nameStatusLabel: UILabel!
    
    @IBOutlet weak var bookTitle: UILabel!
    
    @IBOutlet weak var bookImage: UIImageView!
    
    var bookObj = Book()
    var name1 = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameStatusLabel.text = "\(name1), your checkout is successful!!!"
        bookImage

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
