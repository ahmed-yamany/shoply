//
//  LoginView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct LoginView: View {
    let router: Router
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        OnboardingView(header: L10n.Login.header,
                       title: L10n.Login.title,
                       subtitle: L10n.Login.subtitle) {
            content
        }
    }
    
    private var content: some View {
        VStack(spacing: 32) {
            GoogleButton(presentingViewController: router.parentViewController?.topMostViewController()) { }
            
            PrimaryTextField(title: L10n.Login.Field.Email.title,
                             placeholder: L10n.Login.Field.Email.placeholder,
                             text: $viewModel.email)
            
            PrimaryTextField(title: L10n.Login.Field.Password.title,
                             placeholder: L10n.Login.Field.Password.placeholder,
                             text: $viewModel.password, secured: true)
            
            VStack {
                Toggle(isOn: $viewModel.remeberme) {
                    Text(L10n.App.remeberme)
                }
                .toggleStyle(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)

                Button(L10n.Login.Button.login) {
                   login()
                }
                .buttonStyle(.primaryStyle)
             
                HStack(spacing: 32) {
                    Button(L10n.Login.Button.signup) {
                        router.present(UIHostingController(rootView: SignupView(router: router)))
                    }
                    .buttonStyle(.textStyle)
                    
                    Button(L10n.Login.Button.forgotpassword) {
                        router.present(UIHostingController(rootView: ForgotPasswordView(router: router)))
                    }
                    .buttonStyle(.textStyle)   
                }
            }
        }
    }
    
    private func login() {
        Task {
            do {
                try await viewModel.login()
            } catch {
                Logger.log(error.localizedDescription, category: \.default, level: .fault)
            }
        }
    }
}

#Preview {
    LoginView(router: ModalRouter())
}
