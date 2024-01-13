//
//  ToolBarButtonStyle.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

struct ToolBarButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        Circle()
            .stroke(lineWidth: 0.5)
            .frame(height: 40)
            .overlay {
                configuration.label
            }
            .blur(radius: configuration.isPressed ? 2 : 0)
    }
}

extension ButtonStyle where Self == ToolBarButtonStyle {
    static var toolbarStyle: ToolBarButtonStyle {
        ToolBarButtonStyle()
    }
}
