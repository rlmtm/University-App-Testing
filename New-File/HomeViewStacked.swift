//
//  HomeViewStacked.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 24/12/2021.
//

import SwiftUI

struct HomeViewStacked: View {
    @Namespace var namespace
    
    var body: some View {
        ZStack {
        Image("Image1")
            .resizable()
            .frame(maxWidth: 400, minHeight: 920)
        ScrollView {
            VStack (alignment: .leading, spacing: 20) {
                    Spacer()
                    .frame(width: 375, height: 100)
                    .background(Color.blue.opacity(0))
                    Text("Menu")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .alignmentGuide(.top) { $0[VerticalAlignment.top] }
                        .frame(width: 375 , height: 50, alignment: .center)
                    MatchedView()
                    MatchedView()
                    MatchedView()
                    MatchedView()
                    .frame(height: 635)
                }
            }
        }
    }
}

struct HomeViewStacked_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewStacked()
    }
}
