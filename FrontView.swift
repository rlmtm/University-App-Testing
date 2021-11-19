//
//  ContentView.swift
//  ProductDemo
//
//  Created by MILLER, Maximilian on 05.11.21.
//

import SwiftUI

struct FrontView: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Rectangle()
                    .foregroundColor(.indigo)
                    .frame(maxWidth: 375, minHeight: 920)
                VStack(spacing: 85){
                    
                    Rectangle()
                        .foregroundColor(.indigo)
                        .frame(width: 260, height: 0)
                    
                    Text("Welcome to University App")
                        .frame(width: 265 , height: 100, alignment: .topLeading)
                        .font(.custom("Arial", size: 40))
                        .font(.system(size: 40, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.top)
                        .alignmentGuide(.top) { $0[VerticalAlignment.top] }
                    
                    Image("university")
                        .resizable()
                        .frame(width: 300.0, height: 360.0, alignment: .topLeading)
                        .clipShape(Circle())
                            .overlay {
                                Circle().stroke(.white, lineWidth: 4)
                            }
                        .shadow(radius: 10)

                    let x = CGSize(width: 5, height: 5)
                    
                    ZStack{
                        RoundedRectangle(cornerSize: x)
                            .foregroundColor(.white)
                            .frame(width: 113.5, height: 38.5, alignment: .center)
                        Rectangle()
                            .foregroundColor(.indigo)
                            .frame(width: 110, height: 35, alignment: .center)
                                            
                        NavigationLink(destination: MenuView()){
                            Text("Get Started")
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                    Spacer()
                    
                }
            }
        }
    }
}
                        


struct FrontView_Previews: PreviewProvider {
    static var previews: some View {
        FrontView()
    }
}

