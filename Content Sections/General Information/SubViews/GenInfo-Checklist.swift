//
//  GenInfo-Checklist.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 02/01/2022.
//  Copyright © 2022 Balaji. All rights reserved.
//

import SwiftUI

struct GenInfo_Checklist: View {
    
    @State var show = false

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 380, height: 40, alignment: .center)
                .opacity(0)
            List {
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .font(.system(size: 20))
                        .frame(width: 36, height: 36)
                        .foregroundColor(.green)
                        .background(Color("LightGray"))
                        .mask(Rectangle().cornerRadius(10))
                        .padding(.top, 15)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading, spacing: 4){
                        Text("Identifying Universities")
                            .font(.title3.weight(.semibold))
                        Text("Learn about how to indentify the right university for you.")
                            .font(.system(size: 16))
                    }
                }
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .font(.system(size: 20))
                        .frame(width: 36, height: 36)
                        .foregroundColor(.green)
                        .background(Color("LightGray"))
                        .mask(Rectangle().cornerRadius(10))
                        .padding(.top, 15)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading, spacing: 4){
                        Text("Academic Transcripts")
                            .font(.title3.weight(.semibold))
                        Text("This section will discuss how grades are important for university.")
                            .font(.system(size: 16))
                    }
                }
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .font(.system(size: 20))
                        .frame(width: 36, height: 36)
                        .foregroundColor(.green)
                        .background(Color("LightGray"))
                        .mask(Rectangle().cornerRadius(10))
                        .padding(.top, 15)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading, spacing: 4){
                        Text("Extra-Curricular")
                            .font(.title3.weight(.semibold))
                        Text("Learn about how to build a strong profle with activities out of school.")
                            .font(.system(size: 16))
                    }
                }
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .font(.system(size: 20))
                        .frame(width: 36, height: 36)
                        .foregroundColor(.green)
                        .background(Color("LightGray"))
                        .mask(Rectangle().cornerRadius(10))
                        .padding(.top, 15)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading, spacing: 4){
                        Text("Letters of Recommendation")
                            .font(.title3.weight(.semibold))
                        Text("Learn how to leave a good impression for recommedations")
                            .font(.system(size: 16))
                    }
                }
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .font(.system(size: 20))
                        .frame(width: 36, height: 36)
                        .foregroundColor(.green)
                        .background(Color("LightGray"))
                        .mask(Rectangle().cornerRadius(10))
                        .padding(.top, 15)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading, spacing: 4){
                        Text("Standardized Tests")
                            .font(.title3.weight(.semibold))
                        Text("Learn how to practice for these tests and why they are important.")
                            .font(.system(size: 16))
                    }
                }
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .font(.system(size: 20))
                        .frame(width: 36, height: 36)
                        .foregroundColor(.green)
                        .background(Color("LightGray"))
                        .mask(Rectangle().cornerRadius(10))
                        .padding(.top, 15)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading, spacing: 4){
                        Text("Awards & Experiences")
                            .font(.title3.weight(.semibold))
                        Text("Learn about the importance of taking part in competitions.")
                            .font(.system(size: 16))
                    }
                }
                HStack(alignment: .top) {
                    Image(systemName: "checkmark")
                        .font(.system(size: 20))
                        .frame(width: 36, height: 36)
                        .foregroundColor(.green)
                        .background(Color("LightGray"))
                        .mask(Rectangle().cornerRadius(10))
                        .padding(.top, 15)
                        .padding(.trailing, 12)
                    VStack(alignment: .leading, spacing: 4){
                        Text("Community Service")
                            .font(.title3.weight(.semibold))
                        Text("Learn about the importance of helping others in your application.")
                            .font(.system(size: 16))
                    }
                }
                
            }
            .navigationBarHidden(true)
        }
        .overlay(
            NavigationBarSub(title: "Checklist", Account_View: .constant(false))
        )
    }
}

struct GenInfo_Checklist_Previews: PreviewProvider {
    static var previews: some View {
        GenInfo_Checklist()
    }
}

/*
 ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
     ListItem()
         .sheet(isPresented: $show, content: {
             DetailView()
         })
         .onTapGesture {
             show.toggle()
         }
 }
 */
