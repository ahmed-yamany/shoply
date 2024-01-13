//
//  DiscoverView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

struct DiscoverView: View {
    let router: Router
    @StateObject private var viewModel = DiscoverViewModel()
    
    @State private var products: [Product] = []

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                welcomeView
                ProductsSection(products: products)
            }
            .primaryStyle()
            .padding([.horizontal, .top], 24)
        }
        .primaryStyle()
        .toolbarTitle(L10n.Discover.title)
        .hidenNavigationItemsBackButton()
        .task {
            do {
                products = try await viewModel.getProducts()
            } catch {
                Logger.log(error.localizedDescription, category: \.default, level: .fault)
            }
        }
    }
    
    private var welcomeView: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(L10n.Discover.Welcome.title)
                    .font(.custom(size: 32, weight: .regular))
                Text(L10n.Discover.Welcome.subtitle)
                    .font(.custom(size: 32, weight: .bold))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
        }
    }
}

#Preview {
    TabBarView()
}
