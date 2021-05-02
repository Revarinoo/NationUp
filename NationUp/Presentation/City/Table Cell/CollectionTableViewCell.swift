//
//  CollectionTableViewCell.swift
//  NationUp
//
//  Created by Revarino Putra on 01/05/21.
//

import UIKit

enum Category {
    case Food
    case Characteristic
}

class CollectionTableViewCell: UITableViewCell {

    static let identifier = "CollectionTableViewCell"
    var category: Category?
    
    
    static func nib() -> UINib {
        return UINib(nibName: "CollectionTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var subTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.register(CityCollectionViewCell.nib(), forCellWithReuseIdentifier: CityCollectionViewCell.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.contentInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

extension CollectionTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch category {
            case .Food: return getFoods().count
            case .Characteristic: return getCharacteristics().count
            default: return 1
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CityCollectionViewCell.identifier, for: indexPath) as? CityCollectionViewCell else {
            return UICollectionViewCell()
        }
        switch category {
        case .Food:
            subTitle.text = "Traditional Foods"
            cell.setUpFood(with: getFoods()[indexPath.row])
        case .Characteristic:
            subTitle.text = "Characteristics"
            cell.setUpCharacter(with: getCharacteristics()[indexPath.row])
        default:
            return cell
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 209, height: 245)
    }
}