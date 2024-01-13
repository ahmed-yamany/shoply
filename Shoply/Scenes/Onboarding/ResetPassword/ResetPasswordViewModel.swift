//
//  ResetPasswordViewModel.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

class ResetPasswordViewModel: ObservableObject {
    @Published var password: String = ""
    @Published var confirmPassword: String = ""
    
    func isValidForm() -> Bool {
        !password.isEmpty && !confirmPassword.isEmpty && password == confirmPassword
    }
}
