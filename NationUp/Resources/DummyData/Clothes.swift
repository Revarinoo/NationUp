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

let data: [Clothes] = [
    Clothes(name: "Sadariah", image: "sadariah")
]

func getClothes() -> [Clothes] {
    return data
}
