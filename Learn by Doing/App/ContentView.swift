//
//  ContentView.swift
//  Learn by Doing
//
//  Created by Mary Moreira on 25/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    var cards: [Card] = cardData
    
    //MARK: - Content
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 20, content: {
                ForEach(cards) { card in
                    CardView(card: card)
                }
            }) //: HStack
            .padding(20)
        }//: ScrollView
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
