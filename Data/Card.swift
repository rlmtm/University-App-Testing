//
//  Card.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 27/12/2021.
//

import SwiftUI

struct Card: Identifiable {
    let id = UUID()
    var title: String
    var text: String
    var image: String
    var gradient: LinearGradient
}

var cards = [
    Card(title: "Mathematics", text: "Learn the process of getting a major in this field and more ...", image: "1", gradient: LinearGradient(gradient: Gradient(colors: [.purple, .pink]), startPoint: .topTrailing, endPoint: .bottom)),
    Card(title: "Computer Science", text: "Learn the process of getting a major in this field and more ...", image: "1", gradient: LinearGradient(gradient: Gradient(colors: [.blue, .purple]), startPoint: .topTrailing, endPoint: .bottom)),
    Card(title: "Medicine", text: "Learn the process of getting a major in this field and more ...", image: "1", gradient: LinearGradient(gradient: Gradient(colors: [.blue, .pink]), startPoint: .topTrailing, endPoint: .bottom)),
    Card(title: "Law Studies", text: "Learn the process of getting a major in this field and more ...", image: "1", gradient: LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topTrailing, endPoint: .bottom)),
    Card(title: "Law Studies", text: "Learn the process of getting a major in this field and more ...", image: "1", gradient: LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topTrailing, endPoint: .bottom)),
    Card(title: "Law Studies", text: "Learn the process of getting a major in this field and more ...", image: "1", gradient: LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topTrailing, endPoint: .bottom)),
    Card(title: "Law Studies", text: "Learn the process of getting a major in this field and more ...", image: "1", gradient: LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topTrailing, endPoint: .bottom)),
    Card(title: "Law Studies", text: "Learn the process of getting a major in this field and more ...", image: "1", gradient: LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .topTrailing, endPoint: .bottom)),
]
