//
//  ProductDetailsView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

struct ProductDetailsView: View {
    let product: Product
    let router: Router
    
    var body: some View {
        ScrollView {
            VStack {
                Text(product.name)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .primaryStyle()
        .onAppear {
            TabBarViewModel.shared.tabBarIsHidden = true
        }
        .onDisappear {
            TabBarViewModel.shared.tabBarIsHidden = false
        }
        .toolbarTitle("Details")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                backButton
            }
        }
    }
    
    private var backButton: some View {
        Button {
            router.dismiss()
        } label: {
            Image(systemName: "chevron.left")
        }
        .buttonStyle(.toolbarStyle)
    }
}

#Preview {
    ProductDetailsView(product: .sample,
                       router: NavigationRouter(navigationController: UINavigationController()))
}
