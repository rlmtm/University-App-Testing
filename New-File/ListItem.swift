//
//  ListItem.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct ListItem: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "eyes")
                .renderingMode(.original)
                .frame(width: 36, height: 36)
                .foregroundColor(.white)
                .background(Color.black)
                .mask(Circle())
            VStack(alignment: .leading, spacing: 4){
                Text("Intro to iOS Design")
                Text("Design an iOS app from scratch for iOS 15, iPad and Catalina")
            }
        }
        .padding(.vertical) 
    }
}

struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem()
    }
}
