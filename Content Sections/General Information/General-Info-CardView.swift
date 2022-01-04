//
//  General-Info-CardView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 31/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct General_Info_CardView: View {
    
    @AppStorage("isLiteMode") private var isLiteMode = false
    @AppStorage("isDarkMode") private var isDarkMode = false
        
    var body: some View {
        VStack (alignment: .leading, spacing: 8.0){
            Spacer()
            ZStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .cornerRadius(10)
                    .background(.ultraThinMaterial, in:
                        RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .foregroundColor(.white)
                    .opacity(0.5)
                    .cornerRadius(16)
                    .if(!isLiteMode, transform: { view in
                        view.shadow(color: Color("Mono").opacity(0.2), radius: 6, x: 0, y: 0)
                    })
                Image("ChecklistIcon")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 32.0, height: 32.0)
                        .foregroundColor(.black)
                    .padding(2)
                    .padding(.leading, 5)
                    //.background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                
            }
                //.strokeStyle(cornerRadius: 16)
            Text("General Information")
                .font(.system(size: 33))
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .lineLimit(1)
            Text("6 sections - 1 subview".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color("Mono"))
            Text("This will outline important general knowldge for applying and preparting for universities ...")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("Mono"))
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .if(!isLiteMode, transform: { view in
            view.shadow(color: Color("Mono").opacity(0.3), radius: 30, x: 0, y: 0)
        })
//        .cornerRadius(30)
//        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
//        .stroke(Color.black, lineWidth: 2)
        .padding(.horizontal, 20)
        /*.background(
            Image("Blob1")
                .offset(x: 80, y: -130)
        )*/
        .overlay(
        Image("Info")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame (height: 190)
            .offset(x: 30, y: -65)
        )
        .background(
            Image("Blob1")
                .resizable()
                .frame(width: 700, height: 700)
                .offset(x: 80, y: -150)
        )
    }
}

struct General_Info_CardView_Previews: PreviewProvider {
    static var previews: some View {
        General_Info_CardView()
    }
}
