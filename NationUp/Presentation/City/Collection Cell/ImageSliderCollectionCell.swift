//
//  ImageSliderCollectionCell.swift
//  NationUp
//
//  Created by Revarino Putra on 04/05/21.
//

import UIKit

class ImageSliderCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    
    static let identifier = "ImageSliderCollectionCell"
    static func nib() -> UINib {
        return UINib(nibName: "ImageSliderCollectionCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        imgView.contentMode = .scaleAspectFill
    }

}
