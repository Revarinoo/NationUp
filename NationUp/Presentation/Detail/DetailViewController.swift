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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
            navigationController?.navigationBar.shadowImage = UIImage()
            navigationController?.navigationBar.isTranslucent = true
        
        scrollView.backgroundColor = #colorLiteral(red: 1, green: 0.9144377112, blue: 0.8369845748, alpha: 1)
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: view.frame.size.height)
        
        let txt = "Kerak telor (English: Egg crust) is a Betawi traditional spicy omelette dish in Indonesian cuisine. It is made from glutinous rice cooked with egg and served with serundeng (fried shredded coconut), fried shallots  and dried shrimp as topping. \n\n Each of the portion is made by order. The kerak telor vendor puts a small amount of ketan on a small wok pan and heats it on the charcoal fire. He then adds an egg (chicken or duck, but duck eggs are considered more delicious nd some spices and mix it. The dish is fried on a wok without any cooking oil so the omelette will stick on the wok and enable to put it upside down straight against charcoal fire until it is cooked. \n\n Each of the portion is made by order. The kerak telor vendor puts a small amount of ketan on a small wok pan and heats it on the charcoal fire. He then adds an egg (chicken or duck, but duck eggs are considered more delicious nd some spices and mix it. The dish is fried on a wok without any cooking oil so the omelette will stick on the wok and enable to put it upside down straight against charcoal fire until it is cooked.".withBoldText(text: "Betawi traditional spicy omelette dish")
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
