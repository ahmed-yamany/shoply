//
//  SignupView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct SignupView: View {
    let router: Router
    @StateObject private var viewModel = SignupViewModel()
    
    var body: some View {
        OnboardingView(header: L10n.Signup.header,
                       title: L10n.Signup.title,
                       subtitle: L10n.Signup.subtitle, dismissAction: {
            router.dismiss()
        }, content: {
            content
        })
    }
    
    private var content: some View {
        VStack(alignment: .leading, spacing: 32) {
            GoogleButton(presentingViewController: router.parentViewController?.topMostViewController()) { }
            
            PrimaryTextField(title: L10n.Signup.Field.Username.title,
                             placeholder: L10n.Signup.Field.Username.placeholder,
                             text: $viewModel.username)
            
            PrimaryTextField(title: L10n.Signup.Field.Email.title,
                             placeholder: L10n.Signup.Field.Email.placeholder,
                             text: $viewModel.email)
            
            PrimaryTextField(title: L10n.Signup.Field.Password.title,
                             placeholder: L10n.Signup.Field.Password.placeholder,
                             text: $viewModel.password, secured: true)
            
            VStack {
                Toggle(isOn: $viewModel.remeberme) {
                    Text(L10n.App.remeberme)
                }
                .toggleStyle(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)

                Button(L10n.Signup.Button.signup) {
                    signup()
                }
                .buttonStyle(.primaryStyle)
            }
        }
    }
    
    private func signup() {
        Task {
            do {
                try await viewModel.signup()
            } catch {
                Logger.log(error.localizedDescription, category: \.default, level: .error)
            }
        }
    }
}

#Preview {
    SignupView(router: ModalRouter())
}
