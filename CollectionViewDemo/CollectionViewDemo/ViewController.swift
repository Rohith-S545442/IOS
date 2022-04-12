//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Ganguru,Rohith Sai on 4/12/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionViewOutlet.dequeueReusableCell(withReuseIdentifier: "movie", for: indexPath) as! MovieCollectionViewCell
        
        cell.assignMovie(with: movies[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        assignMovieDetails(index: indexPath)
    }

    func assignMovieDetails(index: IndexPath){
        titleOutlet.text = "Movie title : \(movies[index.row].title)"
        yearOutlet.text = "Year released : \(movies[index.row].releasedYear)"
        ratingOutlet.text = "Rating : \(movies[index.row].movieRating)"
        boxOutlet.text = "Box Office : \(movies[index.row].boxOffice)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionViewOutlet.delegate = self
        CollectionViewOutlet.dataSource = self
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var CollectionViewOutlet: UICollectionView!
    
    
    @IBOutlet weak var titleOutlet: UILabel!
    @IBOutlet weak var yearOutlet: UILabel!
    @IBOutlet weak var ratingOutlet: UILabel!
    @IBOutlet weak var boxOutlet: UILabel!
    
    
    
}

