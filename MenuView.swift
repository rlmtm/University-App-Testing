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
                
               
            }
        }
    }
}


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

