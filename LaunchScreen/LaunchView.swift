//
//  LaunchView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 01/01/2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

import SwiftUI

struct LaunchView: View {
    
    @State private var loadingText: [String] = "Loading all assets...".map {String($0)}
    @State private var showLoadingText: Bool = false
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    @State private var counter: Int = 0
    @State private var loops: Int = 0
    @Binding var showLaunchView: Bool
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            Image("Icon")
                .resizable()
                //.frame(width: 150, height: 110)
                .frame(width: 90, height: 90)
                //.clipShape(Circle())
            
            ZStack {
                if showLoadingText {
                    HStack(spacing: 0) {
                        ForEach(loadingText.indices) { index in
                            Text(loadingText[ index])
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(Color("LaunchAccentColor"))
                                .offset(y: counter == index ? -5 : 0)
                        }
                    }
                    .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: 70)
        }
        .onAppear {
            showLoadingText.toggle()
        }
        .onReceive(timer, perform: { _ in
            withAnimation(.spring()) {
                
                let lastIndex = loadingText.count - 1
                if counter == lastIndex {
                    counter = 0
                    loops += 1
                    if loops >= 2 {
                        showLaunchView = false
                    }
                } else {
                    counter += 1
                }
                
            }
        })
    }
}

struct LaunchView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchView(showLaunchView: .constant(true))
    }
}
