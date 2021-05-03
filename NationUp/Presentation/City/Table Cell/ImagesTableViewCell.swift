//
//  ImagesTableViewCell.swift
//  NationUp
//
//  Created by Revarino Putra on 03/05/21.
//

import UIKit

class ImagesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgCollectionView: UICollectionView!
    @IBOutlet weak var imageControll: UIPageControl!
    
    static let identifier = "ImagesTableCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "ImagesTableCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
//        imgCollectionView.dataSource = self
//        imgCollectionView.delegate = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

//extension ImagesTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 3
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        return UICollectionViewCell()
//    }
//
//
//}
