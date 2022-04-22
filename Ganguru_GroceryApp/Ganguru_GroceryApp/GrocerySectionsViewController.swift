//
//  ViewController.swift
//  Ganguru_GroceryApp
//
//  Created by student on 4/5/22.
//

import UIKit

class GrocerySectionsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceriesArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = grocerySectionsTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = groceriesArray[indexPath.row].section
        return cell
    }
    
    var groceriesArray = groceries
    

    
    @IBOutlet weak var grocerySectionsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        grocerySectionsTableView.delegate = self
        grocerySectionsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition  = segue.identifier
        if transition == "itemsSegue"{
            let destination = segue.destination as! GroceryItemsViewController
            
            destination.groceri = groceriesArray[(grocerySectionsTableView.indexPathForSelectedRow!.row)].items_Array
            destination.title1 = groceriesArray[(grocerySectionsTableView.indexPathForSelectedRow!.row)].section
        }
    }
    
    
}

