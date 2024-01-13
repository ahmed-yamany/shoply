//
//  FotgotPasswordView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

struct ForgotPasswordView: View {
    let router: Router
    @StateObject private var viewModel = ForgotPasswordViewModel()
    
    var body: some View {
        OnboardingView(header: L10n.Forgotpassword.header,
                       title: L10n.Forgotpassword.title,
                       subtitle: L10n.Forgotpassword.subtitle, dismissAction: {
            router.dismiss()
        }, content: {
            content
        })
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 32) {
            PrimaryTextField(title: L10n.Forgotpassword.Field.Email.title,
                             placeholder: L10n.Forgotpassword.Field.Email.placeholder,
                             text: $viewModel.email)
            
            Button(L10n.Forgotpassword.Button.forgotpassword) {
                router.present(UIHostingController(rootView: ResetPasswordView(router: router)))
            }
            .buttonStyle(.primaryStyle)
        }
    }
}

#Preview {
    ForgotPasswordView(router: ModalRouter())
}
