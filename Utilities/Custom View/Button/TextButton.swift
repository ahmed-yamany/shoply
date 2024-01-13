//
//  TextButton.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct TextButton: ButtonStyle {
    @Environment(\.isEnabled) var isEnabled
    
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .font(Font.custom(size: 20, weight: .medium))
                .foregroundStyle(getColor(for: configuration))
    }
    
    private func getColor(for configuration: Configuration) -> Color {
        if configuration.isPressed || !isEnabled {
            Color.shPrimary.opacity(0.3)
        } else {
            Color.shPrimary
        }
    }
}

extension ButtonStyle where Self == TextButton {
    static var textStyle: TextButton {
        TextButton()
    }
}

#Preview {
    Button("Click Me") {
        
    }.buttonStyle(.textStyle)
    
}
