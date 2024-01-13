//
//  SignupViewModel.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI
import Firebase

class SignupViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var remeberme: Bool = false
    
    func signup() async throws {
        print("iam here")
        try await Auth.auth().createUser(withEmail: email, password: password)
        DispatchQueue.main.sync {
            AppRouter.shared.authManager.isLogin = true
        }
    }
}
