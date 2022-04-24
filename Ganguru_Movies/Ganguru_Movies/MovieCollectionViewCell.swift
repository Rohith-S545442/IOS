//
//  MovieCollectionViewCell.swift
//  Ganguru_Movies
//
//  Created by student on 4/21/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieCollectionView: UIImageView!
    
    func assignMovie(with movie:Movies){
           movieCollectionView.image = movie.image
       }
}
