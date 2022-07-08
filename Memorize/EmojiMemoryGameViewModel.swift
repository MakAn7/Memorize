//
//  EmojiMemoryGameViewModel.swift
//  Memorize
//
//  Created by Антон Макаров on 07.07.2022.
//

import SwiftUI

class EmojiMemoryGameViewModel {
    private var game: MemoryGameModel<String> = EmojiMemoryGameViewModel.createMemoryGame()
    
    // MARK: - Access to the model
    var cards: [MemoryGameModel<String>.Card] {
        game.cards
    }

    static func createMemoryGame() -> MemoryGameModel<String> {
        let emoji = ["👻", "🎃","🙋🏼‍♂️"]
        return MemoryGameModel<String>(numberOfPairsOfCards: emoji.count) { pairIndex in
            return emoji[pairIndex]}
    }

    // MARK: - Intent(s)
    func choose(card: MemoryGameModel<String>.Card) {
        game.choose(card: card)
    }
    
}
