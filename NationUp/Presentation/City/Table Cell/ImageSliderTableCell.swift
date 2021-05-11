//
//  ImageSliderTableCell.swift
//  NationUp
//
//  Created by Revarino Putra on 04/05/21.
//

import UIKit

class ImageSliderTableCell: UITableViewCell {
    
    @IBOutlet weak var imageCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var data: [String]?
    var timer = Timer()
    var count = 0
    
    
    static let identifier = "ImageSliderTableCell"
    static func nib() -> UINib {
        return UINib(nibName: "ImageSliderTableCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        imageCollectionView.register(ImageSliderCollectionCell.nib(), forCellWithReuseIdentifier: ImageSliderCollectionCell.identifier)
        imageCollectionView.dataSource = self
        imageCollectionView.delegate = self
        imageCollectionView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func pageControlSetUp() {
        guard let total = data?.count else { return }
        pageControl.numberOfPages = total-1
        pageControl.currentPage = 0
        
        DispatchQueue.main.async { [weak self] in
            self!.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(self!.changeImage), userInfo: nil, repeats: true)
        }
    }
    
    @objc func changeImage() {
        guard let total = data?.count else { return }
        
        if count < total-1 {
            let idx = IndexPath.init(item: count, section: 0)
            self.imageCollectionView.scrollToItem(at: idx, at: .centeredHorizontally, animated: true)
            pageControl.currentPage = count
            count += 1
        }
        else {
            count = 0
            let idx = IndexPath.init(item: count, section: 0)
            self.imageCollectionView.scrollToItem(at: idx, at: .centeredHorizontally, animated: false)
            pageControl.currentPage = count
        }
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}

extension ImageSliderTableCell: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        guard let total = data?.count else { return 1 }
        return total-1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = imageCollectionView.dequeueReusableCell(withReuseIdentifier: ImageSliderCollectionCell.identifier, for: indexPath) as? ImageSliderCollectionCell else {return UICollectionViewCell()}
        guard let data = data else { return cell }
        cell.imgView.image = UIImage(named: data[indexPath.row + 1])

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 390, height: 295)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
    }

}
