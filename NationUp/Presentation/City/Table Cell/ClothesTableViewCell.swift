//
//  ClothesTableViewCell.swift
//  NationUp
//
//  Created by Revarino Putra on 02/05/21.
//

import UIKit

class ClothesTableViewCell: UITableViewCell {
    
    static let identifier = "ClothesTableViewCell"
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var clothesName: UILabel!
    
    static func nib() -> UINib {
        return UINib(nibName: "ClothesTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.contentMode = .scaleAspectFill
        imgView.clipsToBounds = true
        imgView.layer.cornerRadius = 20
        imgView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUp(name: String, img: String) {
        clothesName.text = name
        imgView.image = UIImage(named: img)
    }
    
}
