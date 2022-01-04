//
//  SearchItem.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 03/01/2022.
//

import Foundation
import CoreData

enum Priority: Int {
    case low = 0
    case normal = 1
    case high = 2
}

struct SearchItem: Identifiable {
    var id = UUID()
    var name: String = ""
    //var priorityNum: Priority = .normal
    //var isComplete: Bool = false
}

var searchitems = [
    SearchItem(name: "General Information"),
    SearchItem(name: "Courses"),
    SearchItem(name: "Application"),
    SearchItem(name: "University Search"),
    SearchItem(name: "University Curriculum"),
]
