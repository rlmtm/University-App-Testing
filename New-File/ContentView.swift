//
//  ContentView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    //@EnvironmentObject var authentication: Authentication

    var body: some View {
        TabBar()
            .statusBar(hidden: true)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
 
struct ButtonView1: View {
    @State var navigationBarBackButtonHidden = true

    var body: some View {
        Button("Show back") {
            self.navigationBarBackButtonHidden = false
        }.navigationBarBackButtonHidden(navigationBarBackButtonHidden)
    }
}

extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()
      
        let standardAppearance = UINavigationBarAppearance()
        standardAppearance.backgroundColor = .red
        
        let compactAppearance = UINavigationBarAppearance()
        compactAppearance.backgroundColor = .green
        
        let scrollEdgeAppearance = UINavigationBarAppearance()
        scrollEdgeAppearance.backgroundColor = .blue
        
        //navigationBar.standardAppearance = standardAppearance
        navigationBar.compactAppearance = compactAppearance
        //navigationBar.scrollEdgeAppearance = scrollEdgeAppearance
    }
}
/*.statusBar(hidden: true)
 TabView {
         HomeViewTab()
             .tabItem {
                 Image(systemName: "house")
                 Text("Home")
             }
         SearchView()
             .tabItem {
                 Image(systemName: "magnifyingglass")
                 Text("Explore")
         }
         ListView()
             .tabItem {
                 Image(systemName: "list.bullet")
                 Text("List")
             }
         SettingView()
             .tabItem {
                 Image(systemName: "gearshape.fill")
                 Text("Settings")
             }
 }*/
