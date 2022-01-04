//
//  MViewO.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 02/01/2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

import SwiftUI

struct MViewO: View {
    
    var namespace: Namespace.ID
    @Binding var show: Bool
    var course: Course = courses[4]
    @AppStorage("isLiteMode") private var isLiteMode = false
    
    var body: some View {
        VStack {
            Spacer()
            VStack(alignment: .leading, spacing: 12) {
                Text(course.title)
                    .font(.system(size: 30).weight(.bold))
                    .if(!isLiteMode, transform: { view in
                        view.matchedGeometryEffect(id: "title", in: namespace)
                    })
                    .foregroundColor(Color("Mono"))
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(course.subtitle.uppercased())
                    .font(.footnote.weight(.semibold))
                    .if(!isLiteMode, transform: { view in
                        view.matchedGeometryEffect(id: "subtitle", in: namespace)
                    })
                    .foregroundColor(Color("Mono"))
                Text(course.text)
                    .font(.footnote)
                    .if(!isLiteMode, transform: { view in
                        view.matchedGeometryEffect(id: "content", in: namespace)
                    })
                    .foregroundColor(Color("Mono"))
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                    .blur(radius: 30)
                    .if(!isLiteMode, transform: { view in
                        view.matchedGeometryEffect(id: "blur", in: namespace)
                    })
            )
        }
        .foregroundColor(.white)
        .background(
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.9)
                .if(!isLiteMode, transform: { view in
                    view.matchedGeometryEffect(id: "image", in: namespace)
                })
        )
        .background(
            Image("Background2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .if(!isLiteMode, transform: { view in
                    view.matchedGeometryEffect(id: "background", in: namespace)
                })
        )
        .mask (
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .if(!isLiteMode, transform: { view in
                    view.matchedGeometryEffect(id: "mask", in: namespace)
                })
        )
        .frame(height: 300)
        .padding(20)
        
    }
}

struct MViewO_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        MViewO(namespace: namespace, show: .constant(false))
    }
}
