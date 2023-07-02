//
//  Emoji.swift
//  Emoji Dictionary
//
//  Created by Owais Quadri on 2023-07-02.
//

import Foundation

struct Emoji {
    var character: String
    var definition: String
    var year: Int
    var rating: Double?
    var category: String
    
}
func getEmojis() -> [Emoji] {
    var emojis: [Emoji] = []
    emojis.append(Emoji(character: "🤪", definition: "🤪".unicodeScalars.first!.properties.name!.capitalized, year: 2018, rating: 3.5, category: "faces"))
    emojis.append(Emoji(character: "😂", definition: "😂".unicodeScalars.first!.properties.name!.capitalized, year: 2010, rating: 4.5, category: "faces"))
    emojis.append(Emoji(character: "🫡", definition: "🫡".unicodeScalars.first!.properties.name!.capitalized, year: 2021, rating: 5.0, category: "faces"))
    emojis.append(Emoji(character: "🥸", definition: "🥸".unicodeScalars.first!.properties.name!.capitalized, year: 2020, rating: 4.0, category: "faces"))
    emojis.append(Emoji(character: "🫣", definition: "🫣".unicodeScalars.first!.properties.name!.capitalized, year: 2019, category: "faces"))
    return emojis
}
