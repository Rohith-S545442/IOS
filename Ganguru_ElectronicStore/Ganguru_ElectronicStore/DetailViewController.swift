//
//  DetailViewController.swift
//  Ganguru_ElectronicStore
//
//  Created by Ganguru,Rohith Sai on 4/26/22.
//

import UIKit

class DetailViewController: UIViewController {

    var pName = ""
    var pPrice = ""
    
    
    @IBOutlet weak var pNameOutlet: UILabel!
    
    @IBOutlet weak var pPriceOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pNameOutlet.text = pName
        pPriceOutlet.text = pPrice
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
