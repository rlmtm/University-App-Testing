//
//  FeatureView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 24/12/2021.
//

import SwiftUI

struct FeatureView: View {
    
    //var namespace: Namespace.ID
    //@Binding var show: Bool
    var feature: Feature = features[3]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 8.0){
            Spacer()
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: 30, height: 30)
                    .cornerRadius(10)
                Image(feature.logo)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26.0, height: 26.0)
                    .cornerRadius(10)
                    .padding(9)
                    .background(.ultraThinMaterial, in:
                        RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .foregroundColor(Color("Mono"))
            }
            
                //.strokeStyle(cornerRadius: 16)
            Text(feature.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                .lineLimit(1)
            Text(feature.subtitle.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color("Mono"))
            Text(feature.text)
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color("Mono"))
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
       
//        .cornerRadius(30)
//        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
//        .stroke(Color.black, lineWidth: 2)
        .padding(.horizontal, 20)
        /*.background(
            Image("Image1")
                //.offset(x: 90, y: -140)
                //.offset(x: 250, y: -100)
        )*/
        
        
    }
}

struct FeatureView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureView()
            .preferredColorScheme(.dark)
    }
}
