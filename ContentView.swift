//
//  ContentView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var authentication: Authentication
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("isSystemTheme") private var isSystemTheme = false
    @AppStorage("isLiteMode") private var isLiteMode = false
    @State var selectedTab: Tab = .home
    @State var color: Color = .teal

    var body: some View {
        TabBar
            .statusBar(hidden: true)
            .onAppear {
                SystemThemeManager
                    .shared
                    .handleTheme(darkMode: isDarkMode, system: isSystemTheme)
            }
    }
    
    var TabBar: some View {
        ZStack(alignment: .bottom) {
            
            Group {
                switch selectedTab {
                case .home:
                    HomeViewTab()
                case .explore:
                    SearchView()
                case .list:
                    ListView()
                case .settings:
                    SettingView(isDarkMode: $isDarkMode, isSystemTheme: $isSystemTheme, isLiteMode: $isLiteMode)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                ForEach(tabItems) { item in
                    Button {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.71)) {
                            selectedTab = item.tab
                            color = item.color
                        }
                    } label: {
                        VStack(spacing: 0) {
                            Image(systemName: item.icon)
                                .symbolVariant(.fill)
                                .font(.body.bold())
                                .frame(width: 44, height: 29)
                            Text(item.text)
                                .font(.caption2)
                                .lineLimit(1)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
                    .blendMode(selectedTab == item.tab ? .overlay : .normal)
                }
            }
            .padding(.horizontal, 8)
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in:
                RoundedRectangle(cornerRadius: 34, style: .continuous))
            .background(
                HStack {
                    if selectedTab == .settings { Spacer()}
                    if selectedTab == .explore { Spacer()}
                    if selectedTab == .list {
                        Spacer()
                        Spacer()
                    }
                    Circle().fill(color).frame(width: 80)
                    if selectedTab == .home { Spacer()}
                    if selectedTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .list { Spacer()}
                }
                .padding(.horizontal, 8)
            )
            .overlay(
                HStack {
                    if selectedTab == .settings { Spacer()}
                    if selectedTab == .explore { Spacer()}
                    if selectedTab == .list {
                        Spacer()
                        Spacer()
                    }
                    Rectangle()
                        .fill(color)
                        .frame(width: 28, height: 5)
                        .cornerRadius(3)
                        .frame(width: 88)
                        .frame(maxHeight: .infinity, alignment: .top)
                    if selectedTab == .home { Spacer()}
                    if selectedTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .list { Spacer()}
                }
                .padding(.horizontal, 8)
            )
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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

/*
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
 }
 */
