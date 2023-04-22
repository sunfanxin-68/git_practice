//
//  PhotoCollectionViewCell.swift
//  CollectionViews
//
//  Created by 孫凡欣 on 2023/04/19.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotoCollectionViewCell"
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        
        let images = [
        UIImage(named: "01"),
        UIImage(named: "02"),
        UIImage(named: "03"),
        UIImage(named: "04"),
        UIImage(named: "05"),
        UIImage(named: "06"),
        UIImage(named: "07"),
        UIImage(named: "08"),
        UIImage(named: "09"),
        UIImage(named: "10"),
        UIImage(named: "11"),
        UIImage(named: "12"),
        UIImage(named: "13"),
        UIImage(named: "14"),
        UIImage(named: "15"),
        UIImage(named: "16"),
        UIImage(named: "17"),
        UIImage(named: "18"),
        UIImage(named: "19"),
        UIImage(named: "20")
        ].compactMap({ $0 })
        imageView.image = images.randomElement()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
      imageView.frame = contentView.bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageView.image = nil
    }
}
