//
//  ContentView.swift
//  ProductDemo
//
//  Created by MILLER, Maximilian on 05.11.21.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingDetailView = false
    
    var body: some View {
            ZStack{
                Rectangle()
                    .foregroundColor(.indigo)
                    .frame(maxWidth: 375, minHeight: 825)
                  //  .stroke()
                VStack{
                    Text("Welcome to University App")
                        .font(.custom("Arial", size: 40))
                        .font(.system(size: 40, weight: .light, design: .rounded))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 20)
            
                    Image("university")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 360.0, height: 400.0)
                    
                    let x = CGSize(width: 5, height: 5)
                    
                    ZStack{
                        RoundedRectangle(cornerSize: x)
                            .foregroundColor(.white)
                            .frame(width: 113.5, height: 38.5, alignment: .center)
                        Rectangle()
                            .foregroundColor(.indigo)
                            .frame(width: 110, height: 35, alignment: .center)
                
                        
                        Button {
                            print("Button Pressed")
                        } label: {
                            Link("Show Details", destination: URL(string: "https://www.appcoda.com/learnswiftui/swiftui-text.html")!)
                                .padding(25)
                                .foregroundColor(.white)
                        }
                    }
                    
                }
        }
    }
}
                        


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

