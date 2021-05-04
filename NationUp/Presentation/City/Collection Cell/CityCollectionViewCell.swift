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
    @IBOutlet weak var cardView: DesignableView!
    
    static let identifier = "CityCollectionViewCell"
    
    
    static func nib() -> UINib {
        return UINib(nibName: "CityCollectionViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = 10
        imgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        setShadow()
    }
    
    private func setShadow() {
        backgroundColor = .clear
        layer.masksToBounds = false
        layer.shadowOpacity = 0.3
        layer.shadowRadius = 3
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowPath = UIBezierPath(roundedRect: self.bounds,
                                        byRoundingCorners: .allCorners, cornerRadii: CGSize(width: 8, height:
                                        8)).cgPath
        layer.shadowColor = UIColor.black.cgColor
    }
    
    func setUpFood(with model: Food) {
        lblName.text = model.name
        imgView.image = UIImage(named: model.image ?? "")
    }
    
    func setUpCharacter(with model: Characteristic) {
        lblName.text = model.name
        imgView.image = UIImage(named: model.image ?? "")
    }
    
    func setUpClothes(with model: Clothes) {
        lblName.text = model.name
        imgView.image = UIImage(named: model.image ?? "")
    }
}
