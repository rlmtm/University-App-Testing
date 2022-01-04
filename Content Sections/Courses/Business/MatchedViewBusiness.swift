//
//  MatchedViewBusiness.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 03/01/2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

import SwiftUI

struct MatchedViewBusiness: View {
    
    //var namespace: Namespace.ID
    //@Binding var showBusiness: Bool
    var feature: Feature = features[2]
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
            Image("Busines")
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.if(!isLiteMode, transform: { view in
                    //view.matchedGeometryEffect(id: "image", in: namespace)
                //})
                //.frame(width: 240)
                .padding(.leading, 30)
                .padding(.trailing, 5)
                .padding(.bottom, 20)
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

struct MatchedViewBusiness_Previews: PreviewProvider {
    //@Namespace static var namespace
    static var previews: some View {
        MatchedViewBusiness(/*namespace: namespace, showBusiness: .constant(false)*/)
    }
}

