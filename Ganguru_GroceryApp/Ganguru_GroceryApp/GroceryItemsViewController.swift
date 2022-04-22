//
//  GroceryItemsViewController.swift
//  Ganguru_GroceryApp
//
//  Created by student on 4/5/22.
//

import UIKit

class GroceryItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceri.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = groceryItemsTableView.dequeueReusableCell(withIdentifier: "itemCell", for: indexPath)
        cell.textLabel?.text = groceri[indexPath.row].itemName
        return cell
    }
    
    var title1 = ""
    
    @IBOutlet weak var groceryItemsTableView: UITableView!
    
    var groceri:[GroceryItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = title1
        groceryItemsTableView.delegate = self
        groceryItemsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "itemInfoSegue"{
            let destination = segue.destination as! ItemInfoViewController
            
            destination.titleName = groceri[(groceryItemsTableView.indexPathForSelectedRow!.row)].itemName
            
            destination.itemInfo = groceri[(groceryItemsTableView.indexPathForSelectedRow!.row)].itemInfo
            
            destination.img = UIImage(named:groceri[(groceryItemsTableView.indexPathForSelectedRow!.row)].itemImage)
        }
        
    }
    
}
