//
//  BillingView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 31/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct BillingView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 380, height: 40, alignment: .center)
                .opacity(0)
            Form {
                Text("BILLING")
            }
        }.navigationBarHidden(true)
        .overlay(
            NavigationBarSub(title: "Billing", Account_View: .constant(false))
        )
        .padding(.bottom, 100)
        /*.overlay (
            Button(action: {
               self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold))
                    .foregroundColor(.red)
                    .padding(8)
                    .background(.ultraThinMaterial, in: Circle())
                    .padding(.bottom, 690)
                    .padding(.bottom, 100)
                    .padding(.leading, 20)
                    .padding(.trailing, 350)
                
            }
        )*/
    }
}

struct BillingView_Previews: PreviewProvider {
    static var previews: some View {
        BillingView()
    }
}
