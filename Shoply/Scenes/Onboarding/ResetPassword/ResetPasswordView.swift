//
//  ResetPasswordView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

struct ResetPasswordView: View {
    let router: Router
    @StateObject private var viewModel = ResetPasswordViewModel()
    
    var body: some View {
        OnboardingView(header: L10n.ResetPassword.header,
                       title: L10n.ResetPassword.title,
                       subtitle: L10n.ResetPassword.subtitle, content: {
            content
        })
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 32) {
            PrimaryTextField(title: L10n.ResetPassword.Field.Password.title,
                             placeholder: L10n.ResetPassword.Field.Password.placeholder,
                             text: $viewModel.password, secured: true)
            
            PrimaryTextField(title: L10n.ResetPassword.Field.Confirmpassword.title,
                             placeholder: L10n.ResetPassword.Field.Confirmpassword.placeholder,
                             text: $viewModel.confirmPassword, secured: true)
            
            Button(L10n.ResetPassword.Button.done) {
                
            }
            .buttonStyle(.primaryStyle) 
            .disabled(!viewModel.isValidForm())
        }
    }

}

#Preview {
    ResetPasswordView(router: ModalRouter())
}
