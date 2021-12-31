//
//  MatchedViewO.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 27/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct MatchedViewO: View {
        
    var namespace: Namespace.ID
    @Binding var show: Bool
    var feature: Feature = features[0]
    
    var body: some View {
        VStack {
            Spacer()
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
            Image(feature.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: "image", in: namespace)
                .frame(width: 225, height: 225)
                .padding(.leading, 100)
                .padding(.bottom, 50)
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
    }
}

struct MatchedViewO_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        MatchedViewO(namespace: namespace, show: .constant(true))
    }
}

