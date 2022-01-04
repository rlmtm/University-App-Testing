//
//  MViewN.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 02/01/2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

import SwiftUI

struct MViewN: View {
    
    var namespace: Namespace.ID
    @Binding var show: Bool
    var course: Course = courses[4]
    @AppStorage("isLiteMode") private var isLiteMode = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    var body: some View {
        ZStack {
            VStack {
                Color("Background2Color")
                    .frame(width: 400, height: 400, alignment: .center)
                    .ignoresSafeArea()
                Color("Background")
                    .ignoresSafeArea()
            }
            ScrollView {
                VStack {
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .frame(height: 500)
                .padding(20)
                .foregroundColor(.black)
                .background(
                    Image(course.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .if(!isLiteMode, transform: { view in
                            view.matchedGeometryEffect(id: "image", in: namespace)
                        })
                )
                .background(
                    Image("Background2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: 400, minHeight: 520)
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
                .overlay (
                    VStack(alignment: .leading, spacing: 12) {
                        Text(course.title)
                            .font(.system(size: 30).weight(.bold))
                            .if(!isLiteMode, transform: { view in
                                view.matchedGeometryEffect(id: "title", in: namespace)
                            })
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color("Mono"))
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
                        Divider()
                        HStack {
                            Text("University Application Form: https://www.commonapp.org/")
                                .foregroundColor(Color("Mono"))
                        }
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                            .if(!isLiteMode, transform: { view in
                                view.matchedGeometryEffect(id: "blur", in: namespace)
                            })
                    )
                    .offset(y: 250)
                    .padding(20)
                )
            }
            if show == true {
                Button {
                    withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                        show.toggle()
                        self.presentationMode.wrappedValue.dismiss()
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
            } else {
                Button {
                    withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                        self.presentationMode.wrappedValue.dismiss()
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
                .padding(.trailing, 320)
                .padding(.bottom, 10)
                .ignoresSafeArea()
            }
        }
        .padding(.top, -50)
        .navigationBarHidden(true)
    }
}

struct MViewN_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        MViewN(namespace: namespace, show: .constant(false))
    }
}
