//
//  SystemThemeManager.swift
//  Login Screen
//
//  Created by MILLER, Maximilian on 31/12/2021.
//  Copyright © 2021 Balaji. All rights reserved.
//

import Foundation
import UIKit

class SystemThemeManager {
    
    static let shared = SystemThemeManager()
    
    private init() {}
    
    lazy var scenes = UIApplication.shared.connectedScenes
    lazy var windowScene = scenes.first as? UIWindowScene
    lazy var window = windowScene?.windows.first
    
    func handleTheme(darkMode: Bool, system: Bool) {
        
        //Handle System
        guard !system else {
            window!.overrideUserInterfaceStyle = .unspecified
            return
        }
        
        window!.overrideUserInterfaceStyle = darkMode ? .dark : .light

    }
}
