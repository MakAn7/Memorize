//
//  ContentView.swift
//  Memorize
//
//  Created by Антон Макаров on 06.07.2022.
//

import SwiftUI

struct ContentView: View {
    var emojiViewModel: EmojiMemoryGameViewModel
    var body: some View {
        HStack(spacing: 20) {
            ForEach(emojiViewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    emojiViewModel.choose(card: card)
                }
            }
        }
        .foregroundColor(.orange)
        .padding()
        .font(.largeTitle)
    }

    struct CardView: View {
        var card: MemoryGameModel<String>.Card
        var body: some View {
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: 10).fill(.white)
                    RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                    Text(card.content)
                } else {
                    RoundedRectangle(cornerRadius: 10).fill()
                }
            }
        }
    }
}




























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(emojiViewModel: EmojiMemoryGameViewModel())
            .padding(0.0)
    }
}
