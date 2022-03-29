//
//  DetailsViewController.swift
//  TableViewDemo2
//
//  Created by Ganguru,Rohith Sai on 3/29/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var product:Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        displayLabel.text = "The product \((product?.productName)!) is of \((product?.productCategory)!) category."
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
