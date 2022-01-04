//
//  LoginView.swift
//  MySecureApp
//
//  Created by MILLER, Maximilian on 29/12/2021.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    @State var user = ""
    @State var pass = ""
    @State var login = false
    @State var signup = false
    @State var password = ""
    
    var body: some View {
        
        ZStack{
            
            LinearGradient(gradient: .init(colors: [Color("Purplish"),Color("Pinkish")]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
            
            Login(login: $login, signup: $signup, user: $loginVM.credentials.username, pass: $loginVM.credentials.password, password: $password)

            
        }
        .sheet(isPresented: $signup) {
            
            signUp(signup: self.$signup)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct Login: View {
    
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    @Binding var login : Bool
    @Binding var signup : Bool
    @Binding var user : String
    @Binding var pass : String
    @Binding var password : String
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: .init(colors: [Color("Purplish"),Color("Pinkish")]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center, spacing: 0) {
                Spacer()
                /*Text("Welcome to")
                    .font(.system(size: 40)).bold()
                    .padding(.bottom, 10)*/
                UserImage()
                    .padding(.bottom, 20)
                Text("Uniply")
                    .font(.system(size: 40)).bold()
                    .padding(.bottom, 170)
                
            
                HStack{
                    
                    Image(systemName: "person.fill").resizable().frame(width: 20, height: 20)
                    
                    TextField("Username",  text: $loginVM.credentials.username).padding(.leading, 12).font(.system(size: 22))
                        .keyboardType(.emailAddress)
                    
                }.padding(12)
                .background(Color("Color"))
                .cornerRadius(20)
                .padding(.bottom, 15)
                .textFieldStyle(DefaultTextFieldStyle())
                
                HStack{
                    
                    Image(systemName: "lock.fill").resizable().frame(width: 15, height: 20).padding(.leading, 3)
                    
                    SecureField("Password",  text: $loginVM.credentials.password)
                        .padding(.leading, 12).font(.system(size: 22))
                    
                    
                }.padding(12)
                .background(Color("Color"))
                .cornerRadius(20)
                .padding(.bottom, 30)
                .textFieldStyle(DefaultTextFieldStyle())
                
                if loginVM.showProgressView == false {
                    Button(action: {
                        
                        loginVM.login { success in
                            authentication.updateValidation(success: success)
                        }
                        
                    }) {
                        Text("Login").foregroundColor(Color("Color")).padding(10).frame(width: 350).font(.system(size: 20))
                    }
                    .disabled(loginVM.loginDisabled)
                        .onTapGesture {
                            UIApplication.shared.endEditing()
                            
                        }
                    .background(LinearGradient(gradient: .init(colors: [Color("Pinkish"),Color("Purplish")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    .padding(.top, 15)
                    
                    Button(action: {
                        
                        self.signup.toggle()
                        
                    }) {
                        Text("SignUp").foregroundColor(Color("Color")).padding(10).frame(width: 350).font(.system(size: 20))
                    }
                    .background(LinearGradient(gradient: .init(colors: [Color("Pinkish"),Color("Purplish")]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(20)
                    .shadow(radius: 25)
                    .padding(.top, 15)
                    .padding(.bottom, -15)
                } else {
                    ProgressView()
                        .scaleEffect(2)
                        .progressViewStyle(CircularProgressViewStyle(tint: .black))
                }
            }
            .padding(.horizontal, 20)
        }
        .autocapitalization(.none)
        .padding()
        .disabled(loginVM.showProgressView)
        .alert(item: $loginVM.error) { error in
            Alert(title: Text("Invalid Login"), message: Text(error.localizedDescription))
        }
    }
}

struct signUp : View  {
    
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    @Binding var signup : Bool
    @State var password = ""
    
    var body : some View {
        
        
        ZStack{
            
            LinearGradient(gradient: .init(colors: [Color("Purplish"),Color("Pinkish")]), startPoint: .leading, endPoint: .trailing).edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center, spacing: 0, content: {
                     
                Spacer()
                    
                UserImage()
                Text("SignUp")
                    .font(.system(size: 40)).bold()
                    .padding(25)
                
                VStack {
                    HStack{
                             
                         Image(systemName: "person.fill").resizable().frame(width: 20, height: 20)
                         
                         TextField("Username", text: $loginVM.credentials.user){
                            UIApplication.shared.endEditing1()
                         }
                         .padding(.leading, 12).font(.system(size: 20))
                         
                    }.padding(12)
                     .background(Color("Color"))
                     .cornerRadius(20)
                     .padding(.bottom, 10)
                     .padding(.top, 75)

                         
                     HStack{
                         
                         Image(systemName: "lock.fill").resizable().frame(width: 15, height: 20).padding(.leading, 3)
                         
                         SecureField("Password", text: $loginVM.credentials.pass) {
                             UIApplication.shared.endEditing1()
                         }
                         .padding(.leading, 12).font(.system(size: 20))
                         
                     }.padding(12)
                     .background(Color("Color"))
                     .cornerRadius(20)
                     .padding(.bottom, 10)

                         
                     HStack{
                         
                         Image(systemName: "lock.fill").resizable().frame(width: 15, height: 20).padding(.leading, 3)
                         
                         SecureField("Re-Password", text: $loginVM.credentials.repass){
                             UIApplication.shared.endEditing1()
                         }
                         .padding(.leading, 12).font(.system(size: 20))
                         
                     }.padding(12)
                     .background(Color("Color"))
                     .cornerRadius(20)
                     .padding(.bottom, 15)
                     .padding(.top, 0)
                }
                .padding(.bottom, 15)
                
                
                 Button(action: {
                     if loginVM.SignUpDisabled == false {
                         if loginVM.credentials.pass == loginVM.credentials.repass {
                             UserDefaults.standard.set(self.loginVM.credentials.pass, forKey: "pass")
                             //self.loginVM.credentials.pass = self.loginVM.credentials.pass
                             //self.loginVM.credentials.pass = ""
                         }
                         UserDefaults.standard.set(self.loginVM.credentials.user, forKey: "user")
                         self.loginVM.credentials.user = self.loginVM.credentials.user
                         self.signup.toggle()
                     }
                     print("user: " + loginVM.credentials.user)
                     print("pass: " + loginVM.credentials.pass)
                     print("repass: " + loginVM.credentials.repass)
                 }) {
                     
                     if loginVM.SignUpDisabled == true {
                         Text("SignUp").foregroundColor(Color("Color")).padding(10).frame(width: 350).font(.system(size: 20))
                     }
                     
                     if loginVM.SignUpDisabled == false {
                         Text("SignUp").foregroundColor(Color("Color")).padding(10).frame(width: 350).font(.system(size: 20))
                     }
                     
                 }
                 .disabled(loginVM.SignUpDisabled)
                     .onTapGesture {
                         UIApplication.shared.endEditing()
                     }
                 .disabled(loginVM.RepassSame)
                     .onTapGesture {
                         UIApplication.shared.endEditing()
                     }
                 .background(LinearGradient(gradient: .init(colors: [Color("Pinkish"),Color("Purplish")]), startPoint: .leading, endPoint: .trailing))
                 .cornerRadius(20)
                 .shadow(radius: 25)
                 .padding(.top, 15)

                Button(action: {
                    
                    signup = false

                }) {
                    Text("Cancel").foregroundColor(Color("Color")).padding(10).frame(width: 350).font(.system(size: 20))
                }
                .background(LinearGradient(gradient: .init(colors: [Color("Pinkish"),Color("Purplish")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(20)
                .shadow(radius: 25)
                .padding(.top, 15)
                .padding(.bottom, -15)
                     
                 })
                 .padding(.horizontal, 18)
        }
    }
}


struct UserImage: View {
    var body: some View {
        Image("university")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
                .overlay {
                    Circle().stroke(.gray, lineWidth: 2)
                }
            .shadow(radius: 30)
    }
}

extension UIApplication {
    func endEditing1() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ButtonView: View {
    @State var navigationBarBackButtonHidden = true

    var body: some View {
        Button("Show back") {
            self.navigationBarBackButtonHidden = false
        }.navigationBarBackButtonHidden(navigationBarBackButtonHidden)
    }
}

extension Shape {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: CGFloat = 1) -> some View {
        self
            .stroke(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}

extension InsettableShape {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: CGFloat = 1) -> some View {
        self
            .strokeBorder(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}
