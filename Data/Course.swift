//
//  Course.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 27/12/2021.
//

import SwiftUI

struct Course: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var color: Color
    
}

var courses = [
    Course(title: "Medicine", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in this field and more ...", image: "1", color: .pink),
    Course(title: "Computer Science", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in this field and more ...", image: "1", color: .purple),
    Course(title: "Business", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in this field and more ...", image: "1", color: .green),
    Course(title: "Law Studies", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in this field and more ...", image: "1", color: .blue),
    Course(title: "University Application", subtitle: "1 sections - 1 hour", text: "This section will explain about the information needed to apply to universities...", image: "Application", color: .blue),
]
