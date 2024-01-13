//
//  LoginViewModel.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI
import Firebase

class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var remeberme: Bool = false   
    
    func login() async throws {
        try await Auth.auth().signIn(withEmail: email, password: password)
        DispatchQueue.main.async {
            AppRouter.shared.authManager.isLogin = true
        }
    }
}
