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

let jakartaFoods: [Food] = [
    Food(image: "keraktelor", name: "Kerak Telor", description: "Lorem ipsum sir dolor amet"),
    Food(image: "gadogado", name: "Gado-gado", description: "Lorem ipsum sir dolor amet")
]

let bandungFoods: [Food] = [
    Food(image: "miekocok", name: "Mie Kocok", description: "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda. \n\n Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."),
    Food(image: "seblak", name: "Seblak", description: "Lorem ipsum sir dolor amet")
]

let semarangFoods: [Food] = [
    Food(image: "lumpia", name: "Lumpia", description: "Lorem ipsum sir dolor amet"),
    Food(image: "tahugimbal", name: "Tahu Gimbal", description: "Lorem ipsum sir dolor amet")
]

let jogjaFoods: [Food] = [
    Food(image: "gudeg", name: "Gudeg", description: "Lorem ipsum sir dolor amet"),
    Food(image: "bakpia", name: "Bakpia Pathok", description: "Lorem ipsum sir dolor amet")
]

let bogorFoods: [Food] = [
    Food(image: "rotiunyil", name: "Roti Unyil", description: "Lorem ipsum sir dolor amet"),
    Food(image: "sotomie", name: "Soto Mie", description: "Lorem ipsum sir dolor amet")
]

let malangFoods: [Food] = [
    Food(image: "baksomalang", name: "Bakso Malang", description: "Lorem ipsum sir dolor amet"),
    Food(image: "oremorem", name: "Orem-orem", description: "Lorem ipsum sir dolor amet")
]

func getFoods() -> [Food] {
    return jakartaFoods
}
