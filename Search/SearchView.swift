//
//  SearchView.swift
//  Loading View
//
//  Created by MILLER, Maximilian on 22/12/2021.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var searching = false
    @AppStorage("isLiteMode") private var isLiteMode = false
    @AppStorage("isDarkMode") private var isDarkMode = false
    @State var navigationBarHidden = true
    @State private var show = false
    @Namespace var namespace
    var todo: SearchItem = searchitems[0]
    var todo1: SearchItem = searchitems[1]
    var todo2: SearchItem = searchitems[2]
    var todo3: SearchItem = searchitems[3]
    var todo4: SearchItem = searchitems[4]
    
    var body: some View {
        NavigationView {
            VStack {
                /*Text("Search")
                    .frame(alignment: .leading)
                    .font(.largeTitle.weight(.bold))
                    .padding(.trailing, 235)
                    .padding(.bottom, -30)
                    .padding(.top, -70)*/
                Rectangle()
                    .frame(width: 380, height: 100, alignment: .center)
                    .opacity(0)
                SearchBar(searchText: $searchText, searching: $searching)
                    .frame(alignment: .top)
                    .padding(.top, -40)
                Spacer()
                
                overlay
                .if(!isLiteMode, transform: { view in
                    view.shadow(color: Color("Mono").opacity(0.7), radius: 16, x: 0, y: 0)
                })
            }
            .offset(y: 10)
            .navigationBarHidden(navigationBarHidden)
            .overlay(
                NavigationBar(title: "Search", Account_View: .constant(false))
            )
            .padding(.bottom, 230)
            .padding(.horizontal, 30)
            //.navigationTitle(searching ? "Searching" : "Search")
            .frame(maxHeight: .infinity, alignment: .top)

        }
        //.navigationViewStyle(StackNavigationViewStyle())
    }
    
    var overlay: some View {
        VStack(alignment: .leading, spacing: 12) {
            VStack(spacing: 20) {
                if todo.name.contains(searchText) {
                    NavigationLink(destination: General_Info_Subviews()) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color("LightGray"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("Mono"))
                                    .font(.system(size: 20))
                            }
                            .padding(.trailing, 20)
                            Text("General Information")
                                .font(.system(size: 20)).bold()
                                .padding(.leading, 0)
                            Text("lllllllll")
                                .opacity(0)
                        }
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                    )
                    .padding(.horizontal, 20)
                    .frame(width: 370)
                    .offset(y: -300)
                }
                if todo1.name.contains(searchText) {
                    //Divider()
                    NavigationLink(destination: CourseView()) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color("LightGray"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("Mono"))
                                    .font(.system(size: 20))
                            }
                            .padding(.trailing, 20)
                            Text("Courses")
                                .font(.system(size: 20)).bold()
                                .padding(.leading, 0)
                            Text("llllllllllllllllllllllllllllllllllll")
                                .opacity(0)
                        }
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                    )
                    .padding(.horizontal, 20)
                    .frame(width: 370)
                    .offset(y: -300)
                }
                if todo2.name.contains(searchText) {
                    //Divider()
                    NavigationLink(destination: MViewN(namespace: namespace, show: $show)) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color("LightGray"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("Mono"))
                                    .font(.system(size: 20))
                            }
                            .padding(.trailing, 20)
                            Text("Application")
                                .font(.system(size: 20)).bold()
                                .padding(.leading, 0)
                            Text("lllllllllllllllllllllllllllll")
                                .opacity(0)
                        }
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                    )
                    .padding(.horizontal, 20)
                    .frame(width: 370)
                    .offset(y: -300)
                }
                if todo3.name.contains(searchText) {
                    //Divider()
                    Link(destination: URL(string: "https://www.topuniversities.com/universities")!) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color("LightGray"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("Mono"))
                                    .font(.system(size: 20))
                            }
                            .padding(.trailing, 20)
                            Text("Universities Search")
                                .font(.system(size: 20)).bold()
                                .padding(.leading, 0)
                            Text("llllllllll")
                                .opacity(0)
                        }
                    }
                    .padding(20)
                    .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                    )
                    .padding(.horizontal, 20)
                    .frame(width: 370)
                    .offset(y: -300)
                }
            }
            if searchText.isEmpty == true {
                VStack {
                    NavigationLink(destination: General_Info_Subviews()) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color("LightGray"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("Mono"))
                                    .font(.system(size: 20))
                            }
                            .padding(.trailing, 20)
                            Text("General Information")
                                .font(.system(size: 20)).bold()
                                .padding(.leading, 0)
                            Text("lllllllll")
                                .opacity(0)
                        }
                    }
                    Divider()
                    NavigationLink(destination: CourseView()) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color("LightGray"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("Mono"))
                                    .font(.system(size: 20))
                            }
                            .padding(.trailing, 20)
                            Text("Courses")
                                .font(.system(size: 20)).bold()
                                .padding(.leading, 0)
                            Text("llllllllllllllllllllllllllllllllllll")
                                .opacity(0)
                        }
                    }
                    Divider()
                    NavigationLink(destination: MViewN(namespace: namespace, show: $show)) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color("LightGray"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("Mono"))
                                    .font(.system(size: 20))
                            }
                            .padding(.trailing, 20)
                            Text("Application")
                                .font(.system(size: 20)).bold()
                                .padding(.leading, 0)
                            Text("lllllllllllllllllllllllllllll")
                                .opacity(0)
                        }
                    }
                    Divider()
                    Link(destination: URL(string: "https://www.topuniversities.com/universities")!) {
                        HStack {
                            ZStack {
                                Circle()
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(Color("LightGray"))
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(Color("Mono"))
                                    .font(.system(size: 20))
                            }
                            .padding(.trailing, 20)
                            Text("Universities Search")
                                .font(.system(size: 20)).bold()
                                .padding(.leading, 0)
                            Text("llllllllll")
                                .opacity(0)
                        }
                    }
                }
                .padding(20)
                .background(
                    Rectangle()
                        .fill(.ultraThinMaterial)
                        .mask(RoundedRectangle(cornerRadius: 30,  style: .continuous))
                )
                .padding(.horizontal, 20)
                .frame(width: 370)
                .offset(y: -80)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct SearchBar: View {
    
    @Binding var searchText: String
    @Binding var searching: Bool
    @AppStorage("isLiteMode") private var isLiteMode = false
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        ZStack {
            if searching {
                /*Rectangle()
                    .foregroundColor(Color(.systemGray6/*"LightGray"*/))
                    .frame(width: 290, height: 40, alignment: .leading)
                    .cornerRadius(10)
                    .padding(.leading, -60)
                    .if(!isLiteMode, transform: { view in
                        view.shadow(color: Color("Purplish").opacity(0.5), radius: 5, x: 0, y: 0)
                    })*/
                Rectangle()
                    .foregroundColor(Color(.systemGray6/*"LightGray"*/))
                    .frame(width: 340, height: 40, alignment: .center)
                    .cornerRadius(10)
                .if(!isLiteMode, transform: { view in
                    view.shadow(color: Color("Purplish").opacity(0.5), radius: 4, x: 0, y: 0)
                })
            } else {
                Rectangle()
                    .foregroundColor(Color(.systemGray6/*"LightGray"*/))
                    .frame(width: 340, height: 40, alignment: .center)
                    .cornerRadius(10)
                .if(!isLiteMode, transform: { view in
                    view.shadow(color: Color("Purplish").opacity(1), radius: 9, x: 0, y: 0)
                })
            }
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(Color("DarkGray"))
                    .padding(.leading, 25)
                TextField("Search", text: $searchText) { startedEditing in
                    if startedEditing {
                        withAnimation {
                            searching = true
                        }
                        searchText = ""
                    }
                } onCommit: {
                    withAnimation {
                        searching = false
                    }
                }
                .foregroundColor(.gray)
            }
            if searching {
                withAnimation(.easeIn) {
                    Button("Cancel") {
                        searchText = ""
                        withAnimation(.easeIn) {
                           searching = false
                           UIApplication.shared.dismissKeyboard()
                        }
                    }
                    .foregroundColor(.blue)
                        .padding(.leading, 265)
                }
            }
            
        }
        .frame(width: 370,height: 70)
            .cornerRadius(13)
            .padding()
    }
}


extension UIApplication {
     func dismissKeyboard() {
         sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
     }
 }

struct FirstResponderTextField: UIViewRepresentable {
    
    @Binding var text: String
    let placeholder: String
    
    class Coordinator: NSObject, UITextFieldDelegate {
        
        @Binding var text: String
        var becameFirstResponder = false
        
        init(text: Binding<String>) {
            self._text = text
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            text = textField.text ?? ""
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
    
    func makeUIView(context: Context) -> some UIView {
        let textField = UITextField()
        textField.delegate = context.coordinator
        textField.placeholder = placeholder
        return textField
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        if !context.coordinator.becameFirstResponder {
            uiView.becomeFirstResponder()
            context.coordinator.becameFirstResponder = true
        }
    }
}


/*.toolbar {
    if searching {
        Button("Cancel") {
            searchText = ""
            withAnimation {
               searching = false
               UIApplication.shared.dismissKeyboard()
            }
        }
        .frame(width: 40, height: 15, alignment: .center)
        .padding(.trailing, 20)
        .padding(.top, 815)
    }
}

.gesture(DragGesture()
            .onChanged({ _ in
    UIApplication.shared.dismissKeyboard()
            })
)
*/

/*List {
    ForEach(Universities.filter({ (uni: String) -> Bool in
        return uni.hasPrefix(searchText) || searchText == ""
    }), id: \.self) { uni in
        Text(uni)
    }
}*/
