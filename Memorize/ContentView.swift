//
//  ContentView.swift
//  Memorize
//
//  Created by Антон Макаров on 06.07.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: 20) {
            ForEach(0..<4) {_ in
                CardView(isFaceUp: <#Bool#>)
            }
        }
        .foregroundColor(.orange)
        .padding()
        .font(.largeTitle)
    }

    struct CardView: View {
        var isFaceUp: Bool 
        var body: some View {
            ZStack {
                if isFaceUp {
                    RoundedRectangle(cornerRadius: 10).fill(.white)
                    RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                    Text("🐶")
                } else {
                    RoundedRectangle(cornerRadius: 10).fill()
                }
            }
        }
    }
}




























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(0.0)
    }
}
