//
//  SmallCardView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 27/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct SmallCardView: View {
    var card: Card  = cards[2]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 99)
                .frame(maxWidth: .infinity)
            Text(card.title)
                .font(.headline)
                .fontWeight(.bold)
            Text("20 sections - 3 hours")
                .opacity(0.7)
                .font(.system(size: 15))
        }
        .foregroundColor(.white)
        .padding(16)
        .frame(height: 222)
        .background(card.gradient)
        .cornerRadius(30)
    }
}

struct SmallCardView_Previews: PreviewProvider {
    static var previews: some View {
        SmallCardView()
    }
}
