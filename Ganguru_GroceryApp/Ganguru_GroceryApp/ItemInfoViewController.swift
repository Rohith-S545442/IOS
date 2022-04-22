//
//  ItemInfoViewController.swift
//  Ganguru_GroceryApp
//
//  Created by student on 4/5/22.
//

import UIKit

class ItemInfoViewController: UIViewController {
    
    var groceryObj = GroceryItem()
    
    var titleName = ""
    var itemInfo = ""
    var img = UIImage(named: "")
    
    @IBOutlet weak var itemImageViewOutlet: UIImageView!
    
    @IBOutlet weak var itemInfoOutlet: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = titleName
        itemImageViewOutlet.image = img
        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 0, animations: {
            self.itemImageViewOutlet.frame.origin.x = -100
            self.itemImageViewOutlet.frame.origin.y = -100
            self.itemImageViewOutlet.image = self.img
        },completion: {_ in
            self.itemImageViewOutlet.frame.origin.x = 0
            self.itemImageViewOutlet.frame.origin.y = 0
        })
    }
    
    @IBAction func showItemInfoAction(_ sender: UIButton) {
        itemInfoOutlet.isHidden = false
        itemInfoOutlet.text! = itemInfo
    }
}
