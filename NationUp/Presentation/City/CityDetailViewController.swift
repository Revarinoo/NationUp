//
//  CityDetailViewController.swift
//  NationUp
//
//  Created by Revarino Putra on 01/05/21.
//

import UIKit

class CityDetailViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    var play = UIBarButtonItem()
    var pause = UIBarButtonItem()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "orange-bg")
        MusicPlayer.shared.startMusic(audio: "kicirkicir")
        setRightBarItem()
    }
    
    func setRightBarItem() {
        self.pause = UIBarButtonItem(barButtonSystemItem: .pause, target: self, action: #selector(pausedMusic))
        self.play = UIBarButtonItem(barButtonSystemItem: .play, target: self, action: #selector(playedMusic))
        navigationItem.rightBarButtonItem = pause
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "dark-liver-horses")
    }
    
    @objc func playedMusic() {
        navigationItem.rightBarButtonItem = pause
        MusicPlayer.shared.resumeMusic()
    }
    
    @objc func pausedMusic () {
        navigationItem.rightBarButtonItem = play
        MusicPlayer.shared.pauseMusic()
    }
    
    @IBAction func backToPrevious(_ sender: UIBarButtonItem) {
        MusicPlayer.shared.pauseMusic()
    }
    
    func setUpTableView() {
        tableView.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        tableView.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        tableView.register(ClothesTableViewCell.nib(), forCellReuseIdentifier: ClothesTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}

extension CityDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        switch indexPath.row {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as? ImageTableViewCell else {
                return UITableViewCell()
            }
            cell.imgView.image = UIImage(named: "jakarta-view")
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell else {
                return UITableViewCell()
            }
            cell.category = .Food
            return cell
        case 2:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell else {
                return UITableViewCell()
            }
            cell.category = .Characteristic
            return cell
        case 3:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ClothesTableViewCell.identifier, for: indexPath) as? ClothesTableViewCell else {
                return UITableViewCell()
            }
            cell.setUp(name: getClothes()[0].name!, img: getClothes()[0].image!)
            return cell
        default:
            break
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 295.0
        }
        return 320.0
    }
}
