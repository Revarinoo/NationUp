//
//  Clothes.swift
//  NationUp
//
//  Created by Revarino Putra on 02/05/21.
//

import Foundation

struct Clothes {
    var name: String?
    var image: String?
    var desc: String?
}

let jakartaCloth: Clothes = Clothes(name: "Sadariah", image: "sadariah",desc: "Lorem ipsum sir dolor amet")
let bandungCloth: Clothes = Clothes(name: "Kebaya Sunda", image: "bajubandung",desc: "Lorem ipsum sir dolor amet")

func getClothes() -> Clothes {
    return jakartaCloth
}
