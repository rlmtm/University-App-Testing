//
//  AccountView.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 29/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import SwiftUI

struct AccountView: View {
    
    @EnvironmentObject var authentication: Authentication
    @StateObject private var loginVM = LoginViewModel()
    @State var SignedOut = false
    @State var showAccount = true
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
            VStack {
                Rectangle()
                    .frame(width: 380, height: 40, alignment: .center)
                    .opacity(0)
                Form {
                    Section {
                        Image("Profile")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 400, height: 200, alignment: .center)
                            .padding(.leading, -50)
                            .padding(.bottom, 20)
                            .padding(.top, -30)
                    }
                    
                    Section {
                        HStack {
                            Text("Account Name:")
                            Spacer()
                            Text("Maximilian Miller")
                        }
                        HStack {
                            Text("Username:")
                            Spacer()
                            Text(loginVM.credentials.username)
                        }
                        HStack {
                            Text(" Password:")
                            Spacer()
                            Text(loginVM.credentials.password)
                        }
                    }
                    
                    Section {
                        Link(destination: URL(string: "https://www.youtube.com")!) {
                            HStack {
                                Image(systemName: "play.rectangle.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(.red)
                                    .cornerRadius(10)
                                Text("YouTube")
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.blue)
                                
                            }
                        }
                        
                        Link(destination: URL(string: "https://www.twitter.com")!) {
                            HStack {
                                Image(systemName: "arrowshape.turn.up.forward.fill")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color("Twitter"))
                                    .cornerRadius(10)
                                Text("Twitter")
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.blue)
                                
                            }
                        }
                        
                        Link(destination: URL(string: "https://www.hackingwithswift.com")!) {
                            HStack {
                                Image(systemName: "network")
                                    .font(.system(size: 20))
                                    .foregroundColor(.gray)
                                    .cornerRadius(10)
                                Text("Website")
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.blue)
                                
                            }
                        }
                        
                    }
                    
                    
                    Section {
                        HStack {
                            Spacer()
                            Button("Sign out") {
                                authentication.updateValidation(success: false)
                                SignedOut = true
                            }
                                .foregroundColor(.red)
                            Spacer()
                        }
                    }
                    
                    Section {
                        
                    }
                    
                }
            }.navigationBarHidden(true)
    .overlay(
        NavigationBarSub(title: "Account", Account_View: .constant(false))
    )
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

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
