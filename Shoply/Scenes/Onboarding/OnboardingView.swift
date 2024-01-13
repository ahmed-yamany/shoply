//
//  OnboardingView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct OnboardingView<Content: View>: View {
    let header: String
    let title: String
    let subtitle: String
    var dismissAction: (() -> Void)?
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        VStack {
            Text(header.uppercased())
                .font(.h5)
            
            ScrollView {
                VStack(spacing: 20) {
                    description
                    content()
                }
                .padding(.top, 60)
                .padding(.horizontal, 24)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .primaryStyle()
        .overlay(alignment: .topLeading) {
            if let dismissAction {
                Button {
                    dismissAction()
                } label: {
                    Image(systemName: "x.circle.fill")
                        .font(.custom(size: 25, weight: .regular))
                        .padding(.horizontal)
                        .foregroundStyle(Color.shPrimary)
                }
            }
        }
    }
    
    private var description: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(title)
                .font(.h4)
            
            Text(subtitle)
                .foregroundStyle(Color.shSecondaryText)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    OnboardingView(header: "Login", title: "Welcome Back", subtitle: "Login Subtitle") {
        
    }
}
