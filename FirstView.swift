//
//  FirstView.swift
//  ProductDemo
//
//  Created by MILLER, Maximilian on 15.11.21.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(0..<10) {
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 350, height: 200)
                        .background(Color.red)
                }
            }
        }
        .frame(width: 360, height: 500)
        Text("First View")
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
