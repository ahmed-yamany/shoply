//
//  SplashView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct SplashView: View {
    let router: Router
    @StateObject private var viewModel = SplashViewModel()
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                imageView
                descriptions
                Button(L10n.Onboarding.button) {
                    router.present(UIHostingController(rootView: LoginView(router: router)))
                }
                .buttonStyle(.primaryStyle)
            }
            .padding(.horizontal, 24)
        }
        .primaryStyle()
    }

    private var imageView: some View {
        ZStack {
            Text(L10n.Onboarding.nike)
                .font(.custom(size: 160, weight: .medium))
                .foregroundStyle(Color.shPrimaryText.opacity(0.05))
                .offset(x: 40)
            
            Image(.imageOnboarding)
                .resizable()
                .frame(width: 300, height: 300)
                .rotationEffect(.degrees(30))
                .offset(y: 100)
        }
    }
    
    private var descriptions: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(L10n.Onboarding.the)
                .font(Font.rubikScribble(size: 46))
            
            Text(L10n.Onboarding.awesome)
                .font(.custom(size: 46, weight: .semibold))
            
            Text(L10n.Onboarding.branded)
                .font(Font.rubikScribble(size: 46))
            
            Text(L10n.Onboarding.shoes)
                .font(.custom(size: 46, weight: .semibold))
            
            Text(L10n.Onboarding.description)
                .foregroundStyle(Color.shSecondaryText)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    SplashView(router: ModalRouter())
}
