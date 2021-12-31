//
//  HomeView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct HomeView1: View {
    var body: some View {
        ZStack {
        Image("Image1")
            .resizable()
            .frame(maxWidth: 400, minHeight: 920)
        
            ScrollView {
                Spacer()
                
                    //FeatureView()
                    .offset(y: 100)
            }
            .overlay (
            NavigationBar(title: "Featured")
            )
            .offset(y: 65)
        }
    }
}

struct HomeView1_Previews: PreviewProvider {
    static var previews: some View {
        HomeView1()
    }
}
