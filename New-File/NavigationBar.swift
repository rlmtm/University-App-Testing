//
//  NavigationBar.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct NavigationBar: View {
    
    var title = ""
    
    var body: some View {
        ZStack {
            Color.blue
                .background(.ultraThinMaterial)
                .blur(radius: 10)
                .frame(height: 100)
                .frame(maxHeight: .infinity, alignment: .top)
            
            HStack {
                Text("Featured")
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                
                Button {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                        //shows.toggle()
                    }
                } label: {
                    Image(systemName: "xmark")
                        .font(.body.weight(.bold))
                        .foregroundColor(.secondary)
                        .padding(8)
                        .background(.ultraThinMaterial, in: Circle())
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding(20)
                .ignoresSafeArea()
            }
        }
        .frame(height: 0)
        .frame(maxHeight: .infinity, alignment: .top)
        
        
        
        
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}
