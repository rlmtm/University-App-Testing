//
//  General-Info-Subviews.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 31/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct General_Info_Subviews: View {
    
    @State var navigationBarHidden = true
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 16)], spacing: 16) {
                        ForEach(geninfocards) { genCard in
                            //General_Info_SmallCardView(genCard: genCard)
                            
                            NavigationLink(destination: GenInfo_Checklist()) {
                                General_Info_SmallCardView(genCard: genCard)
                            }
                            /*
                            if genCard == [0] {
                                NavigationLink(destination: GenInfo_Checklist()) {
                                    General_Info_SmallCardView(genCard: genCard)
                                }
                            }
                            if genCard == [2] {
                                NavigationLink(destination: GenInfo_Countries()) {
                                    General_Info_SmallCardView(genCard: genCard)
                                }
                            }
                            */
                        }
                    }
                    .padding(.top, 100)
                    .padding(.horizontal, 16)
                    .padding(.bottom, 80)


                }
            }
            .overlay(
                NavigationBarSub(title: "General Info", Account_View: .constant(false))
            )
            .navigationBarHidden(navigationBarHidden)
        }
    }
}

struct General_Info_Subviews_Previews: PreviewProvider {
    static var previews: some View {
        General_Info_Subviews()
            .preferredColorScheme(.light)
    }
}
