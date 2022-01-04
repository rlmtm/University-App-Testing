//
//  LoginScreenApp.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 29/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

@main
struct LoginScreenApp: App {
    
    @StateObject var authentication = Authentication()
    @State private var showLaunchView: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if authentication.isValidated {
                    NavigationView{
                        ContentView()
                            .navigationBarHidden(true)
                    }
                    .environmentObject(authentication)
                    .navigationViewStyle(StackNavigationViewStyle())
                } else {
                    LoginView()
                        .environmentObject(authentication)
                }
                
                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunchView: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0)
            }
            .statusBar(hidden: true) //*/

            /*NavigationBar()
                .statusBar(hidden: true)*/
        }
    }
}
