//
//  MessageView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

struct MessageView: View {
    @StateObject private var viewModel = MessageViewModel()
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    MessageView()
}
