//
//  CardView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct CardView: View {
    var card: Card  = cards[3]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 128.0)
                .frame(maxWidth: .infinity)
            Text(card.title)
                .font(.title)
                .fontWeight(.bold)
            Text(card.text)
                .lineLimit(2)
                .opacity(0.7)
            Text("20 sections - 3 hours")
                .opacity(0.7)
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(width: 252, height: 329)
        .background(card.gradient)
        .cornerRadius(30)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
