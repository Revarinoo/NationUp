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

let jakartaChar: [Characteristic] = [
    Characteristic(image: "ondelondel", name: "Ondel-ondel", description: "Lorem ipsum sir dolor amet"),
    Characteristic(image: "silat", name: "Pencak Silat", description: "Lorem ipsum sir dolor amet")
]

let bandungChar: [Characteristic] = [
    Characteristic(image: "angklung", name: "Angklung", description: "Lorem ipsum sir dolor amet")
]

let semarangChar: [Characteristic] = [
    Characteristic(image: "angklung", name: "Angklung", description: "Lorem ipsum sir dolor amet")
]

let bogorChar: [Characteristic] = [
    Characteristic(image: "angklung", name: "Angklung", description: "Lorem ipsum sir dolor amet")
]

let jogjaChar: [Characteristic] = [
    Characteristic(image: "angklung", name: "Angklung", description: "Lorem ipsum sir dolor amet")
]

let malangChar: [Characteristic] = [
    Characteristic(image: "angklung", name: "Angklung", description: "Lorem ipsum sir dolor amet")
]

func getCharacteristics() -> [Characteristic] {
    return jakartaChar
}
