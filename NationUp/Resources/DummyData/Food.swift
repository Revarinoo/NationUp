//
//  Food.swift
//  NationUp
//
//  Created by Revarino Putra on 02/05/21.
//

import Foundation

struct Food {
    var image: String?
    var name: String?
    var description: String?
}

let foods: [Food] = [
    Food(image: "keraktelor", name: "Kerak Telor", description: "Lorem ipsum sir dolor amet"),
    Food(image: "gadogado", name: "Gado-gado", description: "Lorem ipsum sir dolor amet")
]

func getFoods() -> [Food] {
    return foods
}
