//
//  ViewController.swift
//  Ganguru_ElectronicStore
//
//  Created by Ganguru,Rohith Sai on 4/26/22.
//

import UIKit

class ElectronicViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("\(electronics_array.count)")
        return electronics_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        cell.textLabel?.text = electronics_array[indexPath.row].first
        return cell
    }
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    var electronics_array = Electronic
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Electronic Store"
        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "productSegue"{
            let destination = segue.destination as! DetailViewController
            destination.pName = electronics_array[(tableViewOutlet.indexPathForSelectedRow!.row)][0]
            destination.pPrice = electronics_array[(tableViewOutlet.indexPathForSelectedRow!.row)][1]
            
        }
    }
}

