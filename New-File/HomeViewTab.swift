//
//  HomeView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 24/12/2021.
//

import SwiftUI

struct HomeViewTab: View {
    
    @State var hasScrolled = false
    @Namespace var namespace
    @State private var show = false
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color("Background").ignoresSafeArea()
                
                ScrollView {
                    
                    scrollDetection
                    
                    featured
                                        
                    Text("Courses".uppercased())
                        .font(.footnote.weight(.semibold))
                        .font(.system(size: 20))
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 20)

                    if !show {
                        
                        MatchedViewO(namespace: namespace, show: $show)
                            .onTapGesture {
                                withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                                    show.toggle()
                                }
                            }
                    }
                }
                .coordinateSpace(name: "scroll")
                .safeAreaInset(edge: .top, content: {
                    Color.clear.frame(height: 70)
                })
                .overlay(
                    NavigationBar(title: "Featured")
                )
                
                if show {
                    MatchedViewN(namespace: namespace, show: $show)
                }
            }
        }
    }
    
    var scrollDetection: some View {
        GeometryReader { proxy in
//                Text("\(proxy.frame(in: .named("scroll")).minY)")
            Color.clear.preference(key: ScrollPreferenceKey.self, value: proxy.frame(in: .named("scroll")).minY)
        }
        .frame(height: 0)
    }
    
    var featured: some View {
        TabView {
            ForEach(features) { feature in
                GeometryReader { proxy in
                    let minX = proxy.frame(in: .global).minX
                    
                    NavigationLink(destination: MedicineDetailView()) {
                        FeatureView(feature: feature)

                        .padding(.vertical, 40)
                        .rotation3DEffect(.degrees(minX / -10), axis: (x: 0, y: 1, z: 0))
                        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
                        .blur(radius: abs(minX / 40))
                        .overlay(
                                Image(feature.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame (height: 185)
                                    .offset(x: 32, y: -65)
                                    .offset(x: minX)
                        )
                    }
                    Text("\(proxy.frame(in: .global).minX  )")
                }
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height: 430)
        .background(
            Image("Blob1")
                .resizable()
                .offset(x: 100, y: -150)
        )
    }
}

struct HomeViewTab_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewTab()
    }
}

struct ScrollPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}

/*.coordinateSpace(name: "scroll")
.onPreferenceChange(ScrollPreferenceKey.self, perform: { value in
    withAnimation(.easeInOut) {
        if value  < 0 {
            hasScrolled = true
        } else {
            
        }
    }
    
})*/
