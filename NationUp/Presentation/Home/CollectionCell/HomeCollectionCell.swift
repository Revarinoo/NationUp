//
//  HomeCollectionCell.swift
//  NationUp
//
//  Created by Revarino Putra on 29/04/21.
//

import UIKit

class HomeCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var cityImage: UIImageView!
    @IBOutlet weak var cityName: UILabel!
    
    static let identifier = "HomeCollectionCell"
    
    func setup(with city: City) {
        cityImage.image = UIImage(named: city.image[0])
        cityName.text = city.name
    }
}
