//
//  GenreViewController.swift
//  Ganguru_Movies
//
//  Created by Ganguru,Rohith Sai on 4/21/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies_array.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        cell.textLabel?.text = movies_array[indexPath.row].category
        return cell
    }
    
    
    @IBOutlet weak var genreTableView: UITableView!
    
    var movies_array = moviesStack
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Movies App"
        genreTableView.delegate = self
        genreTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieSegue"{
            let destination = segue.destination as! MoviesViewController
            
            destination.moviesArray = movies_array[(genreTableView.indexPathForSelectedRow!.row)].movies
            
            destination.title1 = movies_array[(genreTableView.indexPathForSelectedRow!.row)].category
        }
    }
    
    
}

