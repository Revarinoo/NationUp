//
//  City.swift
//  NationUp
//
//  Created by Revarino Putra on 29/04/21.
//

import Foundation

struct City {
    var name: String
    var image: [String]
    var food: [Food]
    var characteristic: [Characteristic]
    var clothes: Clothes
    var music: String
}

let jakartaImage: [String] = ["Jakarta","jakarta-view"]
let bandungImage: [String] = ["Bandung","bandung1","bandung2","bandung3"]
let semarangImage: [String] = ["Semarang","bandung1","bandung2","bandung3"]
let jogjaImage: [String] = ["Jogja","bandung1","bandung2","bandung3"]
let bogorImage: [String] = ["Bogor","bandung1","bandung2","bandung3"]
let malangImage: [String] = ["Malang","bandung1","bandung2","bandung3"]


let cities: [City] = [
    City(name: "Jakarta", image: jakartaImage, food: jakartaFoods, characteristic: jakartaChar, clothes: jakartaCloth, music: "kicirkicir"),
    City(name: "Bandung", image: bandungImage, food: bandungFoods, characteristic: bandungChar, clothes: bandungCloth, music: "bubuybulan"),
    City(name: "Semarang", image: semarangImage, food: semarangFoods, characteristic: semarangChar, clothes: jakartaCloth, music: "bubuybulan"),
    City(name: "Yogyakarta", image: jogjaImage, food: jogjaFoods, characteristic: jogjaChar, clothes: jakartaCloth, music: "bubuybulan"),
    City(name: "Bogor", image: bogorImage, food: bogorFoods, characteristic: bogorChar, clothes: jakartaCloth, music: "bubuybulan"),
    City(name: "Malang", image: malangImage, food: malangFoods, characteristic: malangChar, clothes: jakartaCloth, music: "bubuybulan")
]
