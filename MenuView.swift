//
//  MenuView.swift
//  ProductDemo
//
//  Created by MILLER, Maximilian on 15.11.21.
//

import SwiftUI

struct MenuView: View {
    @State private var selection: String? = nil

    var body: some View {
        NavigationView {
            VStack {
                /*NavigationLink(destination: Text("First View"), tag: "1", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Second View"), tag: "2", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Third View"), tag: "3", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Fourth View"), tag: "4", selection: $selection) { EmptyView() }
                NavigationLink(destination: Text("Fifth View"), tag: "5", selection: $selection) { EmptyView() }*/
                
                Text("Main Content View")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(Color.blue)
                Spacer()
                
                NavigationLink(destination: FirstView()) {
                    Text("First View")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
                }
                
                NavigationLink(destination: SecondView()) {
                    Text("Second View")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.blue]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
                }
                
                NavigationLink(destination: ThirdView()) {
                    Text("Third View")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
                }
                
                NavigationLink(destination: FourthView()) {
                    Text("Fourth View")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.orange]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
                }
                
                NavigationLink(destination: FifthView()) {
                    Text("Fifth View")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
                }
                
                NavigationLink(destination: SixthView()) {
                    Text("Sixth View")
                    .frame(minWidth: 0, maxWidth: 300)
                    .padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.indigo]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(40)
                    .font(.title)
                }
                
                //NavigationLink(destination: Text("Sixth View"), tag: "6", selection: $selection) { EmptyView() }
                
                /*Button {
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
                
                Spacer()
                
               Button {
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


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

