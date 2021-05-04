//
//  ViewController.swift
//  NationUp
//
//  Created by Revarino Putra on 29/04/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var homeView: UICollectionView!
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.dataSource = self
        homeView.delegate = self
        homeView.collectionViewLayout = UICollectionViewFlowLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    @IBAction func unwindToHome( _ segue: UIStoryboardSegue) {
        MusicPlayer.shared.pauseMusic()
    }
}

extension HomeViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = homeView.dequeueReusableCell(withReuseIdentifier: HomeCollectionCell.identifier, for: indexPath) as? HomeCollectionCell else {
            return UICollectionViewCell()
        }
        
        cell.setup(with: cities[indexPath.row])
        
        return cell
    }
}

extension HomeViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 160)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 24.0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        currentIndex = indexPath.row
        self.performSegue(withIdentifier: "CityDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? CityDetailViewController {
            destVC.data = cities[currentIndex]
        }
    }
}
