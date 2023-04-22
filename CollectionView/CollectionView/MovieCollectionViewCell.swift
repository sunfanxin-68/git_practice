//
//  MovieCollection ViewCellCollectionViewCell.swift
//  CollectionView
//
//  Created by 孫凡欣 on 2023/04/19.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var movieimageView: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    func setup(with movie: Movie) {
        movieimageView.image = movie.image
        titleLbl.text = movie.title
    }
    
    
}
 
