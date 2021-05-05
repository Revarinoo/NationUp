//
//  CityDetailViewController.swift
//  NationUp
//
//  Created by Revarino Putra on 01/05/21.
//

import UIKit

protocol CityDetailDelegate: class {
    func getClicked(data: City, category: Category, index: Int)
}

class CityDetailViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    var play = UIBarButtonItem()
    var pause = UIBarButtonItem()
    var data: City?
    var tempData: City?
    var tempCat: Category?
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        setUpNavigationBar()
        guard let musicName = data?.music else {return}
        MusicPlayer.shared.startMusic(audio: musicName)
    }
    
    private func setUpNavigationBar() {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.barTintColor = UIColor(named: "orange-bg")
        navigationItem.title = data?.image[0]
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
    
    
    func setUpTableView() {
        tableView.register(CollectionTableViewCell.nib(), forCellReuseIdentifier: CollectionTableViewCell.identifier)
        tableView.register(ClothesTableViewCell.nib(), forCellReuseIdentifier: ClothesTableViewCell.identifier)
        tableView.register(ImageSliderTableCell.nib(), forCellReuseIdentifier: ImageSliderTableCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBAction func unwindToCity(_ segue: UIStoryboardSegue) {
        
    }
    
}

extension CityDetailViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ImageSliderTableCell.identifier, for: indexPath) as? ImageSliderTableCell else {
                return UITableViewCell()
            }
            guard let images = data?.image else {return cell}
            cell.data = images
            cell.pageControlSetUp()
            return cell
        }
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as? CollectionTableViewCell else {
            return UITableViewCell()
        }
        
        switch indexPath.row {
        case 1: cell.category = .Food
        case 2: cell.category = .Characteristic
        case 3: cell.category = .Cloth
        default: break
        }
        cell.delegate = self
        cell.data = data
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 295.0
        }
        return 280.0
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == 1 || indexPath.row == 2 {
            cell.contentView.layer.masksToBounds = true
            let radius = cell.contentView.layer.cornerRadius
            cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: radius).cgPath
        }
    }
}

extension CityDetailViewController: CityDetailDelegate {
    func getClicked(data: City, category: Category, index: Int) {
        tempData = data
        tempCat = category
        self.index = index
        self.performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? DetailViewController {
            switch tempCat {
            case .Food:
                guard let food = tempData?.food else {return}
                destVC.food = food[index]
            case .Characteristic:
                guard let characteristic = tempData?.characteristic else { return }
                destVC.characteristic = characteristic[index]
            default:
                guard let clothes = tempData?.clothes else { return }
                destVC.cloth = clothes
            }
            
            guard let location = tempData?.name else { return }
            destVC.location = location
        }
    }
}
