//
//  MemoryGame.swift
//  Memorize
//
//  Created by Антон Макаров on 07.07.2022.
//

import Foundation

struct MemoryGame <CardContent> {
    var cards: [Card]

    func choose(card: Card) {
        print("card chosen: \(card)")
    }

    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
