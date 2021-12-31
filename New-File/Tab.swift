//
//  Tab.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 29/12/2021.
//

import SwiftUI

struct TabItem: Identifiable {
    let id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
    
}

var tabItems = [
    TabItem(text: "Home", icon: "house", tab: .home, color: Color("TabColor")), //.teal
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore, color: Color("TabColor")), //.blue
    TabItem(text: "List", icon: "list.bullet", tab: .list, color: Color("TabColor")), //.red
    TabItem(text: "Settings", icon: "gearshape.fill", tab: .settings, color: Color("TabColor")), //.pink
]

enum Tab: String {
    case home
    case explore
    case list
    case settings
}
