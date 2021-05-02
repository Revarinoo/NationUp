//
//  Characteristic.swift
//  NationUp
//
//  Created by Revarino Putra on 02/05/21.
//

import Foundation

struct Characteristic {
    var image: String?
    var name: String?
    var description: String?
}

let characteristics: [Characteristic] = [
    Characteristic(image: "ondelondel", name: "Ondel-ondel", description: "Lorem ipsum sir dolor amet"),
    Characteristic(image: "silat", name: "Pencak Silat", description: "Lorem ipsum sir dolor amet")
]

func getCharacteristics() -> [Characteristic] {
    return characteristics
}
