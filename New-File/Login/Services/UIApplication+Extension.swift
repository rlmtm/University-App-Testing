//
//  UIApplication+Extension.swift
//  MySecureApp
//
//  Created by MILLER, Maximilian on 29/12/2021.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
