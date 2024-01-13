//
//  PrimaryButton.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct PrimaryButton: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .frame(height: 66)
                .foregroundStyle(getColor(for: configuration))
            
            configuration.label
                .font(Font.custom(size: 20, weight: .semibold))
                .foregroundStyle(Color.shWhite)
        }
    }
    
    private func getColor(for configuration: Configuration) -> Color {
        if configuration.isPressed || !isEnabled {
            Color.shPrimary.opacity(0.3)
        } else {
            Color.shPrimary
        }
    }
}

extension ButtonStyle where Self == PrimaryButton {
    static var primaryStyle: PrimaryButton {
        PrimaryButton()
    }
}

#Preview {
    Button("Click Me") {
        
    }.buttonStyle(.primaryStyle)
}
