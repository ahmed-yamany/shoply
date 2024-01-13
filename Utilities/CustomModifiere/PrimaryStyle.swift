//
//  PrimaryStyle.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

extension View {
    @ViewBuilder
    func primaryStyle() -> some View {
        self.background(Color.shPrimaryBackground)
            .foregroundStyle(Color.shPrimaryText)
            .font(.medium(weight: .medium))
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}
