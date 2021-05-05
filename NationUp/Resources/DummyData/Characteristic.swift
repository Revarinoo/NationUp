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
    Characteristic(image: "silat", name: "Pencak Silat", description: "Lorem ipsum sir dolor amet"),
    Characteristic(image: "lenong", name: "Lenong", description: "Lenong is a form of theatre traditional to the Betawi people of Jakarta, Indonesia. Dialogue is generally in the Betawi dialect. Actions and dialogue are often presented in a humorous manner on top of a stage known as a pentas tapal kuda, so named for the way actors enter the stage from the left and right. Audiences sit in front of the stage. \n\n The number of performers is determined by the needs of the story. Male performers are referred to as panjak, while female performers are known as ronggeng. A performance is generally opened with a prayer, known as ungkup, and a ritual offering. The performers are then introduced. Gambang kromong is one of the musical genres which may accompany a performance. Musicians may use various instruments, including flutes, gongs, accordions, or drums.\n\n Performances can be classified under many genres, although most are about heroes or criminals; tales adapted from folklore, such as from the One Thousand and One Nights, are also common. In broad strokes there are two main subdivisions of lenong, namely lenong denes and lenong preman. Stories in lenong denes focus on the exploits of the nobility, the rich, and the powerful. Lenong preman stories are always about commoners or folk heroes. The type of performance will affect the costumes worn")
]

let bandungChar: [Characteristic] = [
    Characteristic(image: "angklung", name: "Angklung", description: "Angklung is a musical instrument from Western Java, Indonesia made of a varying number of bamboo tubes attached to a bamboo frame. The tubes are carved to have a resonant pitch when struck and are tuned to octaves, similar to Western handbells. The base of the frame is held in one hand, while the other hand shakes the instrument, causing a repeating note to sound. Each performer in an angklung ensemble is typically responsible for just one pitch, sounding their individual angklung at the appropriate times to produce complete melodies (see Kotekan).\n\n The angklung is popular throughout the world, but it originated in what is now West Java and Banten provinces in Indonesia, and has been played by the Sundanese for many centuries. The word angklung may have originated from Sundanese \"angkleung-angkleungan\", suggesting the movement of the angklung player and the \"klung\" sound that comes from the instrument.\n\n Another theory suggests that the word angklung was formed from two Balinese words – angka and lung. Angka means \"tone\", and lung means \"broken\" or \"lost\". Angklung thus means \"incomplete tone\""),
    Characteristic(image: "braga", name: "Jalan Braga", description: "Braga Street is a street in the center of Bandung, Indonesia, famous in 1920s colonial Indonesia as a promenade street. A European ambiance of chic cafes, boutiques, and restaurants along the street propelled Bandung to attain the Dutch nickname Parijs van Java . Braga Street begins on a T-junction with Asia-Afrika Street (formerly De Groote Postweg), running north until the city council (balaikota).\n\n Starting from the south entrance, the Gedung Merdeka (Independence Building) stands at the corner, known as the venue of the 1955 Asian–African Conference. At the southeast corner of the cross-section between the Naripan Street, an eight-stories building is noticeable for its distinctive oceanwave style. The building is still used as the headquarters of a regional bank, the Bank Jabar."),
    Characteristic(image: "bandung2", name: "Gedung Sate", description: "Gedung Sate is a neo-classical building mixed with native elements. Once the seat of the Dutch East Indies department of Transport, Public Works and Water Management, it now serves as the governor's office of the West Java province in Indonesia. It was built in 1920 after a design by Dutch architect J. Gerber. Its common name, Gedung sate, is a nickname that translates literally from Indonesian to 'satay building', which is a reference to the shape of the building's central pinnacle - which resemble the shape of one of the Indonesian traditional dish called satay. ")
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
