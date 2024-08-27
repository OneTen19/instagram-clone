//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by OneTen on 8/27/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}

