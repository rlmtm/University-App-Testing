//
//  SixthView.swift
//  ProductDemo
//
//  Created by MILLER, Maximilian on 16.11.21.
//

import SwiftUI

struct SearchBar: View {
    @State var text: String = ""
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
 
            TextField("Search ...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 10)
                .onTapGesture {
                
                    self.isEditing = true
                }
 
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
 
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
            }
        }
    }
}

/*struct SearchBar: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}*/
