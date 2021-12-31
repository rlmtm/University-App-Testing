//
//  HomeView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
            NavigationView {
                ScrollView {
                    VStack {
                        Text("General Information".uppercased())
                            .font(.subheadline).bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        ScrollView(.horizontal , showsIndicators: false) {
                            HStack(spacing: 16  ) {
                                ForEach(cards) { card in
                                    NavigationLink(destination: DetailView()) {
                                        CardView(card: card)
                                    }
                                }
                                .navigationBarTitle (Text("Content Page"), displayMode: .large)

                            }
                            .padding()
                        }
                        MatchedViewBuilder()
                        //.navigationBarTitle("Content Page")
                        /*Rectangle()
                            .frame(width: 370, height: 20, alignment: .center)
                            .opacity(0)
                        MatchedViewBuilder()*/
                        /*Text("Recent Courses")
                            .font(.subheadline).bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
                            ForEach(cards) { card in
                                NavigationLink(destination: DetailView()) {
                                    SmallCardView(card: card)
                                }
                            }
                        }*/
                        .padding()
                    }
                }

            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ButtonView2: View {
    @State var navigationBarBackButtonHidden = true

    var body: some View {
        Button("Show back") {
            self.navigationBarBackButtonHidden = false
        }.navigationBarBackButtonHidden(navigationBarBackButtonHidden)
    }
}
