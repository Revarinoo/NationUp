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
}

let jakartaCloth: Clothes = Clothes(name: "Sadariah", image: "sadariah")
let bandungCloth: Clothes = Clothes(name: "Kebaya Sunda", image: "bajubandung")

func getClothes() -> Clothes {
    return jakartaCloth
}
