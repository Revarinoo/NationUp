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
let bandungCloth: Clothes = Clothes(name: "Kebaya Sunda", image: "bajubandung",desc: "Kebaya is an upper garment opened at the front traditionally made from lightweight fabrics such as brocade, cotton, gauze, lace, or voile, sometimes adored with embroidery. The front is secured with either buttons, pins, or brooches. The lower garment for the outfit is known as sarong, kemben or kain, a long piece of cloth wrapped and tucked around the waist or under the armpits, either made out of batik, ikat, songket or tenun. Kebaya is officially recognised as the national costume of Indonesia,and its fashion icon, although it is more popularly worn by Javanese, Sundanese and Balinese people.")

func getClothes() -> Clothes {
    return jakartaCloth
}
