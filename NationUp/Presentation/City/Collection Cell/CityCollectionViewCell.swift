//
//  CityCollectionViewCell.swift
//  NationUp
//
//  Created by Revarino Putra on 01/05/21.
//

import UIKit

class CityCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    static let identifier = "CityCollectionViewCell"
    
    
    static func nib() -> UINib {
        return UINib(nibName: "CityCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = 20
        imgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }
    
    public func setUpFood(with model: Food) {
        lblName.text = model.name
        imgView.image = UIImage(named: model.image ?? "")
    }
    
    public func setUpCharacter(with model: Characteristic) {
        lblName.text = model.name
        imgView.image = UIImage(named: model.image ?? "")
    }

}
