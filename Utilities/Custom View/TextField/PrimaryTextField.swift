//
//  PrimaryTextField.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct PrimaryTextField: View {
    let title: String
    let placeholder: String
    @Binding var text: String
    var secured: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            titleView
            textfieldView
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    private var titleView: some View {
        Text(title)
            .font(.custom(size: 18, weight: .medium))
            .foregroundStyle(Color.shSecondaryText)
    }
    
    private var textfieldView: some View {
        textfield
            .foregroundStyle(Color.shPrimaryText)
            .foregroundColor(Color.shSecondaryText)
            .frame(height: 66)
            .padding(.horizontal, 16)
            .background(
                RoundedRectangle(cornerRadius: 5)
                    .fill(Color.shFiled)
            )
    }
    
    private var textfield: some View {
        Group {
            if secured {
                SecureField("", text: $text, prompt: prompt)
            } else {
                TextField("", text: $text, prompt: prompt)
            }
        }
    }
    
    private var prompt: Text {
        Text(placeholder)
            .foregroundColor(Color.shSecondaryText)
            .font(.custom(size: 14, weight: .regular))
    }
}

#Preview {
    PrimaryTextField(title: "Email", placeholder: "Enter Email", text: .constant(""))
        .padding()
}
