//
//  MatchedViewO.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 27/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct MatchedViewMedicine: View {
    
    //var namespace: Namespace.ID
    //@Binding var showMedicine: Bool
    var feature: Feature = features[0]
    @AppStorage("isLiteMode") private var isLiteMode = false

    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                Text(feature.title)
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                    //.if(!isLiteMode, transform: { view in
                        //view.matchedGeometryEffect(id: "title", in: namespace)
                    //})
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(feature.subtitle.uppercased())
                    .font(.footnote.weight(.semibold))
                    .foregroundColor(.white)
                    //.if(!isLiteMode, transform: { view in
                        //view.matchedGeometryEffect(id: "subtitle", in: namespace)
                    //})
                Text(feature.text)
                    .font(.footnote)
                    .foregroundColor(.white)
                    //.if(!isLiteMode, transform: { view in
                        //view.matchedGeometryEffect(id: "content", in: namespace)
                    //})
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                    .blur(radius: 30)
                    //.if(!isLiteMode, transform: { view in
                        //view.matchedGeometryEffect(id: "blur", in: namespace)
                    //})
            )
        }
        .foregroundColor(.white)
        .background(
            Image("Medical")
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "image", in: namespace)
                //})
                //.frame(width: 225, height: 225)
                .padding(.leading, 0)
                .padding(.bottom, 50)
        )
        .background(
            Image("Background1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "background", in: namespace)
                //})
        )
        .mask (
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "mask", in: namespace)
                //})
        )
        .frame(height: 300)
        .padding(20)
        
    }
}

struct MatchedViewMedicine_Previews: PreviewProvider {
    //@Namespace static var namespace
    static var previews: some View {
        MatchedViewMedicine(/*namespace: namespace, showMedicine: .constant(false)*/)
    }
}

