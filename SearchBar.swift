//
//  SixthView.swift
//  ProductDemo
//
//  Created by MILLER, Maximilian on 16.11.21.
//

import SwiftUI

struct SearchBar: View {
    @State var SearchString: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
 
            TextField("Search ...", SearchString: $SearchString)
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
                    self.SearchString = ""
 
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
