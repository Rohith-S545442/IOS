//
//  ViewController.swift
//  TableViewDemo2
//
//  Created by Ganguru,Rohith Sai on 3/29/22.
//

import UIKit

class Product{
    var productName : String?
    var productCategory : String?
    
    init(productName: String, productCategory: String){
        self.productName = productName
        self.productCategory = productCategory
    }
} //end of Product class


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        //Assign data to the cell
        cell.textLabel?.text = productsArray[indexPath.row].productName
        //return cell
        return cell
    }
    
    //create a product array
    var productsArray = [Product]()
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        let product1 = Product(productName: "MacBookAir", productCategory: "Laptop")
        productsArray.append(product1)
        let product2 = Product(productName: "iPhone", productCategory: "Mobile Phones")
        productsArray.append(product2)
        let product3 = Product(productName: "iWatch", productCategory: "Accesories")
        productsArray.append(product3)
        let product4 = Product(productName: "AirpodsPro", productCategory: "Accesories")
        productsArray.append(product4)
        let product5 = Product(productName: "MacBookPro", productCategory: "Laptop")
        productsArray.append(product5)

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "detailsSegue"{
            let destination = segue.destination as! DetailsViewController
            
            destination.product = productsArray[(tableViewOutlet.indexPathForSelectedRow?.row)!]
        }
    }

}

