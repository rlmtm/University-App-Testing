//
//  Feature.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 28/12/2021.
//

import SwiftUI

struct Feature: Identifiable {
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var logo: String
    
}

var features = [
    Feature(title: "Medicine", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in medicine and more ...", image: "Medicine", logo: "MedicineIcon"),
    Feature(title: "Computer Science", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in computer science and more ...", image: "ComputerScience", logo: "ComputerScienceIcon"),
    Feature(title: "Business", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in business and more ...", image: "Business", logo: "BusinessIcon"),
    Feature(title: "Law Studies", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in law studies and more ...", image: "Law", logo: "LawIcon"),
]

//Feature(title: "General Info", subtitle: "20 sections - 3 hours", text: "Learn the process of getting a major in this field and more ...", image: "Image2", logo: "Avatar"),
