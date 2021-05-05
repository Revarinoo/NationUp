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
    @IBOutlet weak var cardView: DesignableView!
    
    
    static let identifier = "HomeCollectionCell"
    
    func setup(with city: City) {
        cityImage.image = UIImage(named: city.image[0])
        cityName.text = city.name
        setShadow()
    }
    
    private func setShadow() {
            backgroundColor = .clear
            layer.masksToBounds = false
            layer.shadowOpacity = 0.1
            layer.shadowRadius = 3
            layer.shadowOffset = CGSize(width: 0, height: 3)
            layer.shadowPath = UIBezierPath(roundedRect: self.bounds,
                                            byRoundingCorners: .allCorners, cornerRadii: CGSize(width: 8, height:
                                            8)).cgPath
            layer.shadowColor = UIColor.black.cgColor
            
        }
}
