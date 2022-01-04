//
//  CourseCardView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 04/01/2022.
//

import SwiftUI

struct CourseCardView: View {
    
    @AppStorage("isLiteMode") private var isLiteMode = false
        
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
                Image("CourseIcon")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 35.0, height: 35.0)
                    .padding(2)
                    //.background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                
            }
                //.strokeStyle(cornerRadius: 16)
            Text("Courses")
                .font(.system(size: 33))
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .lineLimit(1)
            Text("4 sections - 5 topics".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color("Mono"))
            Text("This section will outline 4 different subjects and how to prepare for them for university ...")
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
        Image("Course2")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame (height: 220)
            .offset(x: 60, y: -60)
        )
    }
}

struct CourseCardView_Previews: PreviewProvider {
    static var previews: some View {
        CourseCardView()
    }
}
