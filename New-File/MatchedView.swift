//
//  MatchedView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 24/12/2021.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                    VStack {
                        Spacer()
                        VStack(alignment: .leading, spacing: 12) {
                            Text("Gen Info")
                                .font(.largeTitle.weight(.bold))
                                .matchedGeometryEffect(id: "title", in: namespace)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            Text("20 sections - 3 hours".uppercased())
                                .font(.footnote.weight(.semibold))
                                .matchedGeometryEffect(id: "subtitle", in: namespace)
                            Text("This section will explain about the information needed for universities...")
                                .font(.footnote)
                                .matchedGeometryEffect(id: "content", in: namespace)
                        }
                        .padding(20)
                        .background(
                            Rectangle()
                                .fill(.ultraThinMaterial)
                                .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                                .blur(radius: 30)
                                .matchedGeometryEffect(id: "blur", in: namespace)
                        )
                    }
                    .foregroundColor(.white)
                    .background(
                        Image("Image2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .matchedGeometryEffect(id: "image", in: namespace)
                    )
                    .background(
                        Image("Image1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: "background", in: namespace)
                    )
                    .mask (
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace)
                    )
                    .frame(height: 300)
                    .padding(20)
            } else {
                ScrollView {
                    VStack {
                        Spacer()
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 500)
                    .padding(20)
                    .foregroundColor(.black )
                    .background(
                        Image("Image2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .matchedGeometryEffect(id: "image", in: namespace)
                    )
                    .background(
                        Image("Image1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: 400, minHeight: 920)
                            .matchedGeometryEffect(id: "background", in: namespace)
                    )
                    .mask (
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace)
                    )
                    .overlay (
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Gen Info")
                                    .font(.largeTitle.weight(.bold))
                                    .matchedGeometryEffect(id: "title", in: namespace)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                Text("20 sections - 3 hours".uppercased())
                                    .font(.footnote.weight(.semibold))
                                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                                
                                Text("This section will explain about the information needed for universities...")
                                    .font(.footnote)
                                    .matchedGeometryEffect(id: "content", in: namespace)
                                Divider()
                                HStack {
                                    Image("Avatar")
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
        }
        .onTapGesture {
            withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                show.toggle()
            }
        }
    }
}

struct MatchedView_Previews: PreviewProvider {
    static var previews: some View {
        MatchedView()
    }
}
