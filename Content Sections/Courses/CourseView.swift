//
//  CourseView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 02/01/2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

import SwiftUI

struct CourseView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .red
        UIPageControl.appearance().pageIndicatorTintColor = .lightGray
        UIPageControl.appearance().tintColor =
        UIPageControl.appearance().currentPageIndicatorTintColor
    }
    
    //var namespace: Namespace.ID
    //@Namespace var namespace
    //@State private var showMedicine = false
    //@State private var showComputerScience = false
    //@State private var showBusiness = false
    //@State private var showLaw = false
    @AppStorage("isLiteMode") private var isLiteMode = false
    
    var body: some View {
        ScrollView {
            VStack {
                Rectangle()
                    .frame(width: 380, height: 50, alignment: .center)
                    .opacity(0)
                
                featured
                    .if(!isLiteMode, transform: { view in
                        view.shadow(color: Color("Purplish").opacity(0.5), radius: 30, x: 0, y: 0)
                    })
                        
                Text("Courses".uppercased())
                    .font(.system(size: 20)).bold()
                    .foregroundColor(Color("Mono"))
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding(.top, 30)
                
                NavigationLink(destination: MedicineDetailView()) {
                    MatchedViewMedicine()
                }
                
                
                NavigationLink(destination: ComputerScienceDetailView()) {
                    MatchedViewComputerScience()
                }
                
                NavigationLink(destination: BusinessDetailView()) {
                    MatchedViewBusiness()
                }
                
                NavigationLink(destination: LawDetailView()) {
                    MatchedViewLaw()
                }
                
                Rectangle()
                    .frame(width: 380, height: 50, alignment: .center)
                    .opacity(0)
        }
        /*if showMedicine {
            withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                MedicineDetailView(namespace: namespace, showMedicine: $showMedicine)
            }
            .onTapGesture {
                withAnimation (.spring(response: 0.7 , dampingFraction: 0.6)) {
                    showMedicine.toggle()
                }
            }
        }*/
        
        }
        .statusBar(hidden: true)
        .overlay(
            NavigationBarSub(title: "Courses", Account_View: .constant(false))
        )
        .navigationBarHidden(true)
    }
    
    var featured: some View {
        TabView {
            ForEach(features) { feature in
                GeometryReader { proxy in
                    let minX = proxy.frame(in: .global).minX
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
//                    Text("\(proxy.frame(in: .global).minX  )")
                }
            }
        }
        //.tabViewStyle(.page(indexDisplayMode: .never))
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .padding(.bottom, -10)
        .frame(height: 430)
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseView()
    }
}

