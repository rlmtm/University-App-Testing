//
//  UniSearch-SmallCardView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 31/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct UniSearch_SmallCardView: View {

    var genCard: GenInfoCard = geninfocards[2]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image("SEO2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 130)
                .frame(maxWidth: .infinity)
            Text("University Search")
                .font(.system(size: 28))
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            /*Text("20 sections - 3 hours")
                .opacity(0.7)
                .font(.system(size: 15))*/
        }
        .foregroundColor(Color("MonoB"))
        .padding(16)
        .frame(height: 222)
        .background(genCard.gradient)
        .cornerRadius(30)
        .padding(.horizontal, 20)

    }

}

struct UniSearch_SmallCardView_Previews: PreviewProvider {
    static var previews: some View {
        UniSearch_SmallCardView()
    }
}
