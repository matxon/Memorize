//
//  ContentView.swift
//  Memorize
//
//  Created by Madi on 28.03.2024.
//

import SwiftUI

struct ContentView: View {
    let emojis = ["👻","🎃","🕷️","👿"]
    
    var body: some View {
        HStack {
            CardView(content: emojis[0], isFace: true)
            CardView(content: emojis[1])
            CardView(content: emojis[2])
            CardView(content: emojis[3])
        }
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View {
    let content: String
    @State var isFace = false
    
    var body: some View {
        ZStack {
            let base = RoundedRectangle(cornerRadius:12)
            
            if isFace {
                base.fill(.white)
                base.strokeBorder(lineWidth: 2)
                Text(content)
                    .font(.largeTitle)
            } else {
                base.fill()
            }
        }
        .onTapGesture(perform: {
            isFace.toggle()
        })
    }
}





#Preview {
    ContentView()
}
