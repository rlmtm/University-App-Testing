//
//  MatchedViewN.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 27/12/2021.
//

import SwiftUI

struct MatchedViewN: View {
    
    var namespace: Namespace.ID
    @Binding var show: Bool
    var feature: Feature = features[0]
    @State var navigationBarHidden = true
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
            }
            .background(Color("Background"))
            .ignoresSafeArea()
            
            Button {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold))
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(.ultraThinMaterial, in: Circle())
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
            .padding(20)
            .ignoresSafeArea()
        }
    }
    
    var cover: some View {
        VStack {
            Spacer()
                .navigationBarHidden(navigationBarHidden)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 500)
        .padding(20)
        .foregroundColor(.black )
        .background(
            Image(feature.image)
                .resizable()
                .frame(width: 350, height: 350)
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "image", in: namespace)
                .padding(.leading, 20)
                .padding(.top, 30)
        )
        .background(
            Image("Image1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(maxWidth: 400, minHeight: 920, alignment: .top)
                //.frame(maxHeight: .infinity)
                .matchedGeometryEffect(id: "background", in: namespace)
        )
        .mask (
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .overlay (
                VStack(alignment: .leading, spacing: 12) {
                    Text(feature.title)
                        .font(.largeTitle.weight(.bold))
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(feature.subtitle.uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    
                    Text(feature.text)
                        .font(.footnote)
                        .matchedGeometryEffect(id: "content", in: namespace)
                    Divider()
                    HStack {
                        Image(feature.logo)
                            .resizable()
                            .frame(width: 26, height: 26)
                            .cornerRadius(10)
                            .padding(8)
                            .matchedGeometryEffect(id: "avatar", in: namespace)
                            .background(.ultraThinMaterial,
                                in:
                                RoundedRectangle(cornerRadius: 18, style: .continuous))
                            //.strokeStyle(cornerRadius: 18)
                        Text("Created by Maximilian Miller")
                            .font(.footnote)
                            .matchedGeometryEffect(id: "name", in: namespace)
                    }
                }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                            .matchedGeometryEffect(id: "blur", in: namespace)
                    )
                    .offset(y: 250)
                    .padding(20)
        )
    }
}


struct MatchedViewN_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        MatchedViewN(namespace: namespace, show: .constant(true))
    }
}

