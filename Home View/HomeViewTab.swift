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
    @State var navigationBarHidden = true
    @AppStorage("isLiteMode") private var isLiteMode = false
    var feature: Feature = features[0]

    var body: some View {
        
        NavigationView {
            ZStack {
                Color("Background").ignoresSafeArea()
                
                ScrollView {
                    
                    scrollDetection
                    
                    /*Text("General Information".uppercased())
                        .font(.system(size: 20)).bold()
                        .foregroundColor(Color("Mono"))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(height: 5)
                        .padding(.horizontal, 20)
                        .padding(.top, 15)
                        .padding(.bottom, 45)*/
                    
                    NavigationLink(destination: General_Info_Subviews()) {
                        General_Info_CardView()
                    }
                    .if(!isLiteMode, transform: { view in
                        view.shadow(color: Color("Purplish").opacity(0.4), radius: 10, x: 0, y: 0)
                    })
                    .padding(.bottom, 5)
                    .padding(.top, 90)
                    

                    
                    /*Text("Available Courses".uppercased())
                        .font(.system(size: 15)).bold()
                        .foregroundColor(Color("Mono"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 5)
                        .padding(.horizontal, 20)*/
                    
                    NavigationLink(destination: CourseView()) {
                        CourseCardView()
                        .if(!isLiteMode, transform: { view in
                            view.shadow(color: Color("Purplish").opacity(0.4), radius: 10, x: 0, y: 0)
                        })
                    }
                    .padding(.bottom, 25)
                    .padding(.top, 40)
                    
                        
                    /*Text("Application".uppercased())
                        .font(.system(size: 20)).bold()
                        .foregroundColor(Color("Mono"))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(height: 5)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 20)*/
                    
                    if !show {
                        MViewO(namespace: namespace, show: $show)
                        .padding(.bottom, 25)
                        .onTapGesture {
                            withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                                show.toggle()
                            }
                        }
                        .if(!isLiteMode, transform: { view in
                            view.shadow(color: Color("Purplish").opacity(0.6), radius: 20, x: 0, y: 0)
                        })
                    }
                    
                    
                    /*Text("University Search".uppercased())
                        .font(.system(size: 20)).bold()
                        .foregroundColor(Color("Mono"))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .frame(height: 5)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 40)
                        .padding(.top, 25)*/
                    
                    Link(destination: URL(string: "https://www.topuniversities.com/universities")!) {
                        UniSearch_SmallCardView()
                            .padding(.bottom, 75)
                            .if(!isLiteMode, transform: { view in
                                view.shadow(color: Color("Purplish").opacity(0.8), radius: 20, x: 0, y: 0)
                            })
                    }
                }
                
                /*.coordinateSpace(name: "scroll")
                .safeAreaInset(edge: .top, content: {
                    Color.clear.frame(height: 70)
                })*/
                .overlay(
                    NavigationBar(title: "Featured", Account_View: .constant(false))
                )
                
                if show {
                    withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                        MViewN(namespace: namespace, show: $show)
                    }
                    .onTapGesture {
                        withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                            show.toggle()
                        }
                    }
                }
            }
            .navigationBarHidden(navigationBarHidden)
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
                    
                    //NavigationLink(destination: MedicineDetailView(showMedicine: $showMedicine) {
                        FeatureView(feature: feature)
                        .padding(.vertical, 40)
                        .if(!isLiteMode, transform: { view in
                            view.rotation3DEffect(.degrees(minX / -10), axis: (x: 0, y: 1, z: 0))
                        })
                        .if(!isLiteMode, transform: { view in
                            view.shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 0)
                        })
                        .if(!isLiteMode, transform: { view in
                            view.blur(radius: abs(minX / 40))

                        })
                        .overlay(
                                Image(feature.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame (height: 185)
                                    .offset(x: 32, y: -65)
                                    .offset(x: minX)
                        )
                    //}
//                    Text("\(proxy.frame(in: .global).minX  )")
                }
            }
        }
        //.tabViewStyle(.page(indexDisplayMode: .never))
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        //.padding(.bottom)
        .frame(height: 430)
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
    
}
 
 
 featured
     .if(!isLiteMode, transform: { view in
         view.shadow(color: Color("Purplish").opacity(0.5), radius: 30, x: 0, y: 0)
     })
 */
