//
//  DetailViewController.swift
//  NationUp
//
//  Created by Revarino Putra on 04/05/21.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var descriptionText: UITextView!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var category: UILabel!
    @IBOutlet weak var dataName: UILabel!
    @IBOutlet weak var dataLocation: UILabel!
    
    var food: Food?
    var characteristic: Characteristic?
    var cloth: Clothes?
    var location: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
        scrollView.backgroundColor = #colorLiteral(red: 1, green: 0.9144377112, blue: 0.8369845748, alpha: 1)
        let frameHeight = imgView.frame.size.height + detailView.frame.size.height + 90
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: frameHeight)
        
        setUp(food: food, characteristic: characteristic, cloth: cloth, location: location)
        detailView.layer.cornerRadius = 20
        detailView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        
    }
    
    @IBAction func backToPrevious(_ sender: UIBarButtonItem) {
        self.performSegue(withIdentifier: "toCity", sender: self)
    }
    
    func setUp(food: Food?, characteristic: Characteristic?, cloth: Clothes?, location: String) {
        var txt: NSAttributedString!
        var imgName = ""
        var objName = ""
        var cat = ""
        if let foodImg = food?.image, let foodDesc = food?.description, let foodName = food?.name  {
            imgName = foodImg
            objName = foodName
            cat = "Food"
            txt = foodDesc.withBoldText(text: "")
        }
        
        else if let charImg = characteristic?.image, let charDesc = characteristic?.description, let charName = characteristic?.name {
            imgName = charImg
            objName = charName
            cat = "Characteristic"
            txt = charDesc.withBoldText(text: "")
        }
        else if let clothImg = cloth?.image, let clothName = cloth?.name, let clothDesc = cloth?.desc {
            imgName = clothImg
            objName = clothName
            cat = "Clothes"
            txt = clothDesc.withBoldText(text: "")
        }
        print(imgName)
        imgView.image = UIImage(named: imgName)
        dataName.text = objName + ","
        dataLocation.text = location
        category.text = cat
        descriptionText.attributedText = txt
        descriptionText.textColor = #colorLiteral(red: 0.4705882353, green: 0.2509803922, blue: 0.1960784314, alpha: 1)
        descriptionText.translatesAutoresizingMaskIntoConstraints = true
        descriptionText.sizeToFit()
    }

}


extension String {
func withBoldText(text: String) -> NSAttributedString {
    let font = UIFont(name: "SF Pro Display Medium", size: 14)
    guard let safeFont = font, let pointSize = font?.pointSize else { return NSMutableAttributedString()}
    let fullString = NSMutableAttributedString(string: self, attributes: [NSAttributedString.Key.font: safeFont])
    let boldFontAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: pointSize)]
    let range = (self as NSString).range(of: text)
    fullString.addAttributes(boldFontAttribute, range: range)
    return fullString
}}
