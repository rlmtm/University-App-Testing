//
//  ContentView.swift
//  ProductDemo
//
//  Created by MILLER, Maximilian on 05.11.21.
//

import SwiftUI

/*
struct Button<sayBye> where sayBye : View {
    Button(action: sayBye) {
        Text("Bye")
    }
}
*/

struct ContentView: View {
    /* @State private var showDetails = false */
    
    var body: some View {
        VStack{
            Text("Welcome to University App")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 10)
            Image("university")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400.0, height: 400.0)
            Button("Show Details") {
                print("Button Pressed")
                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

