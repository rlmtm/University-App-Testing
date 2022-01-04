//
//  LoginViewModel.swift
//  MySecureApp
//
//  Created by MILLER, Maximilian on 29/12/2021.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var credentials = Credentials()
    @Published var showProgressView = false
    @Published var error: Authentication.AuthenticationError?
    
    var loginDisabled: Bool {
        credentials.username.isEmpty || credentials.password.isEmpty
    }
    
    var SignUpDisabled: Bool {
        credentials.user.isEmpty || credentials.pass.isEmpty || credentials.repass.isEmpty
    }
    
    var RepassSame: Bool {
        credentials.pass != credentials.repass
    }
    
    func login(completion: @escaping (Bool) -> Void) {
        showProgressView = true
        APIService.shared.login(credentials: credentials) { [unowned self](result:Result<Bool, Authentication.AuthenticationError>) in
         showProgressView = false
            switch result {
            case .success:
                completion(true)
            case .failure(let authError):
                credentials = Credentials()
                error = authError
                completion(false)
            }
        }
    }
}
