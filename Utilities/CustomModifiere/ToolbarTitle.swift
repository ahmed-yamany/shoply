//
//  ToolbarTitle.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//
import SwiftUI

extension View {
    @ViewBuilder
    func toolbarTitle(_ title: String) -> some View {
        toolbar {
            ToolbarItem(placement: .principal) {
                Text(title.uppercased())
                    .font(.h5)
                    .foregroundStyle(.shPrimaryText)
            }
        }
    }
}
