//
//  ImageCollectionViewCell.swift
//  NationUp
//
//  Created by Revarino Putra on 03/05/21.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    static let identifier = "ImageCollectionCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "ImageCollectionCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
