//
//  SettingView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct SettingView: View {
    
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("General")) {
                    HStack {
                        Image(systemName: "gear")
                            .foregroundColor(Color("Purplish"))
                        Text("Settings")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                    HStack {
                        Image(systemName: "creditcard")
                            .foregroundColor(Color("Purplish"))
                        Text("Billing")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                    HStack {
                        Image(systemName: "questionmark.circle")
                            .foregroundColor(Color("Purplish"))
                        Text("Help")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.gray)
                            .font(.system(size: 12))
                    }
                }
                
                Section {
                    HStack {
                        Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Label")/*@END_MENU_TOKEN@*/
                        }
                    }
                }
                
                Section {
                    HStack {
                        Spacer()
                        Button("Sign out") {
                            authentication.updateValidation(success: false)
                        }
                            .foregroundColor(.red)
                        Spacer()
                    }
                }
            }.navigationTitle("Settings")
        }
    }
}


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
