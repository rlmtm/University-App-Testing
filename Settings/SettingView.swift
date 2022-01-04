//
//  SettingView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 26/12/2021.
//

import SwiftUI

struct SettingView: View {
    
    @EnvironmentObject var authentication: Authentication
    @State var navigationBarHidden = true
    @Binding var isDarkMode: Bool
    @Binding var isSystemTheme: Bool
    @Binding var isLiteMode: Bool
    @State var DarkModeText = "Dark"
    @State var SignedOut = false

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: .init(colors: [Color("Background"),Color("Background")]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
                
                VStack {
                    Rectangle()
                        .frame(width: 380, height: 50, alignment: .center)
                        .opacity(0)
                    
                    Form {
                        Section(header: Text("General Settings")) {
                            NavigationLink(destination: AccountView()) {
                                HStack {
                                    Image(systemName: "gear")
                                        .foregroundColor(Color("Purplish"))
                                    Text("Account")
                                    Spacer()
                                    /*Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12))*/
                                }
                            }
                            
                            NavigationLink(destination: BillingView()) {
                                HStack {
                                    Image(systemName: "creditcard")
                                        .foregroundColor(Color("Purplish"))
                                    Text("Billing")
                                    Spacer()
                                    /*Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12))*/
                                }
                            }
                            
                            NavigationLink(destination: HelpView()) {
                                HStack {
                                    Image(systemName: "questionmark.circle")
                                        .foregroundColor(Color("Purplish"))
                                    Text("Help")
                                    Spacer()
                                    /*Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12))*/
                                }
                            }

                        }
                        
                        Section(header: Text("Appearance Customization")) {
                            Toggle(isOn: $isDarkMode,
                                   label: {
                                HStack{
                                    if isDarkMode == true {
                                        Image(systemName: "circle.righthalf.filled")
                                            .foregroundColor(Color("Purplish"))
                                        Text("Light Mode")
                                    }
                                    if isDarkMode == false {
                                        Image(systemName: "circle.righthalf.filled")
                                            .foregroundColor(Color("Purplish"))
                                        Text("Dark Mode")
                                    }
                                }
                            })
                            .onChange(of: isDarkMode,
                                      perform: { _ in
                                        SystemThemeManager
                                            .shared
                                            .handleTheme(darkMode: isDarkMode, system: isSystemTheme)
                            })
                            
                            Toggle(isOn: $isSystemTheme,
                                   label: {
                                HStack{
                                    Image(systemName: "arrow.triangle.2.circlepath.circle")
                                        .foregroundColor(Color("Purplish"))
                                    Text("Default Theme")
                                }
                            })
                            .onChange(of: isSystemTheme,
                                      perform: { _ in
                                        SystemThemeManager
                                            .shared
                                            .handleTheme(darkMode: isDarkMode, system: isSystemTheme)
                            })
                            
                            Toggle(isOn: $isLiteMode,
                                   label: {
                                HStack{
                                    Image(systemName: "speedometer")
                                        .foregroundColor(Color("Purplish"))
                                    Text("Lite Mode")
                                }
                            })
                            
                            HStack {
                                Spacer()
                                Button("Reset") {
                                    isDarkMode = false
                                    isSystemTheme = false
                                    isLiteMode = false
                                }
                                    .foregroundColor(.red)
                                Spacer()
                            }                }
                        
                        Section(header: Text("About this application")) {
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(5)
                                        .foregroundColor(Color("LightGray"))
                                    Image(systemName: "gear")
                                        .foregroundColor(Color("DarkGray"))
                                }
                                Text("Application")
                                    .foregroundColor(Color("DarkGray"))
                                Spacer()
                                Text("Uniply")
                            }
                            
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(5)
                                        .foregroundColor(Color("LightGray"))
                                    Image(systemName: "gear")
                                        .foregroundColor(Color("DarkGray"))
                                }
                                Text("App type")
                                    .foregroundColor(Color("DarkGray"))
                                Spacer()
                                Text("University App")
                            }
                            
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(5)
                                        .foregroundColor(Color("LightGray"))
                                    Image(systemName: "gear")
                                        .foregroundColor(Color("DarkGray"))
                                }
                                Text("Compatability")
                                    .foregroundColor(Color("DarkGray"))
                                Spacer()
                                Text("iPhone")
                            }
                            
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(5)
                                        .foregroundColor(Color("LightGray"))
                                    Image(systemName: "gear")
                                        .foregroundColor(Color("DarkGray"))
                                }
                                Text("Developer")
                                    .foregroundColor(Color("DarkGray"))
                                Spacer()
                                Text("Maximilian Miller")
                            }
                            
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(5)
                                        .foregroundColor(Color("LightGray"))
                                    Image(systemName: "gear")
                                        .foregroundColor(Color("DarkGray"))
                                }
                                Text("Designer")
                                    .foregroundColor(Color("DarkGray"))
                                Spacer()
                                Text("Maximilian Miller")
                            }
                            
                            HStack {
                                ZStack {
                                    Rectangle()
                                        .frame(width: 30, height: 30)
                                        .cornerRadius(5)
                                        .foregroundColor(Color("LightGray"))
                                    Image(systemName: "gear")
                                        .foregroundColor(Color("DarkGray"))
                                }
                                Text("iOS Version")
                                    .foregroundColor(Color("DarkGray"))
                                Spacer()
                                Text("15.2")
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
                            
                        } .foregroundColor(.black)
                        
                    }//.navigationTitle("Settings")
                }.alert("Signed Out", isPresented: $SignedOut, actions: {})
            }
            .navigationBarHidden(true)
            .overlay(
                NavigationBar(title: "Settings", Account_View: .constant(false))
            )
        }
        
        //.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingView(isDarkMode: .constant(false), isSystemTheme: .constant(false), isLiteMode: .constant(false))
                .preferredColorScheme(.light)
        }
    }
}
