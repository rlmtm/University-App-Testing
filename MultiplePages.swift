//
//  ContentView.swift
//  MovingPages
//
//  Created by MILLER, Maximilian on 06.11.21.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: String? = nil

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("First View"), tag: "1", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Second View"), tag: "2", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Third View"), tag: "3", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Fourth View"), tag: "4", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Fifth View"), tag: "5", selection: $selection) { EmptyView() }
                //NavigationLink(destination: Text("Sixth View"), tag: "6", selection: $selection) { EmptyView() }
                
                Button {
                    selection = "1"
                } label: {
                    Text("Tap for View 1")
                        .font(.system(size: 20, weight: .light, design: .default))
                        .foregroundColor(.indigo)
                        .frame(width: 200, height: 40, alignment: .center)
                }
                
                Button {
                    selection = "2"
                } label: {
                    Text("Tap for View 2")
                        .font(.system(size: 20, weight: .light, design: .default))
                        .foregroundColor(.indigo)
                        .frame(width: 200, height: 40, alignment: .center)
                }
                
                Button {
                    selection = "3"
                } label: {
                    Text("Tap for View 3")
                        .font(.system(size: 20, weight: .light, design: .default))
                        .foregroundColor(.indigo)
                        .frame(width: 200, height: 40, alignment: .center)
                }
                
                Button {
                    selection = "4"
                } label: {
                    Text("Tap for View 4")
                        .font(.system(size: 20, weight: .light, design: .default))
                        .foregroundColor(.indigo)
                        .frame(width: 200, height: 40, alignment: .center)
                }
                
                Button {
                    selection = "5"
                } label: {
                    Text("Tap for View 5")
                        .font(.system(size: 20, weight: .light, design: .default))
                        .foregroundColor(.indigo)
                        .frame(width: 200, height: 40, alignment: .center)
                }
                
               /*Button {
                    selection = "6"
                } label: {
                    Text("Tap for View 6")
                        .font(.system(size: 20, weight: .light, design: .default))
                        .foregroundColor(.indigo)
                        .frame(width: 200, height: 40, alignment: .center)
                }*/
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
