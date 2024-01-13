//
//  SwiftUIView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct PrimaryToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(configuration.isOn ? Color.shPrimary : Color.shSecondaryText)
            
            configuration.label
                .foregroundColor(Color.shPrimaryText)
                .font(.custom(size: 15, weight: .regular))
        }
        .onTapGesture {
            configuration.isOn.toggle()
        }
    }
}

extension ToggleStyle where Self == PrimaryToggleStyle {
    static var primary: PrimaryToggleStyle {
        PrimaryToggleStyle()
    }
}
