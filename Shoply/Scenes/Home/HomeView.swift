//
//  HomeView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

struct HomeView: View {
    let router: Router
    @StateObject private var viewModel = HomeViewModel()
    
    @State private var products: [Product] = []
    @State private var brands: [Brand] = []
    @Environment(\.productCellAction) var productCellAction
    
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                welcomeView
                SelectBrandView(brands: brands, homeViewModel: viewModel)
                ProductsSection(products: products)
            }
            .primaryStyle()
            .padding([.horizontal, .top], 24)
        }
        .primaryStyle()
        .toolbarTitle(L10n.Home.title)
        .hidenNavigationItemsBackButton()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                showMenuButton
            }
        }
        .task {
            do {
                products = try await viewModel.getProducts()
                brands = try await viewModel.getBrands()
                // swiftlint: disable all
                viewModel.selectedBrandID = brands.first!.id
                // swiftlint: enable all
            } catch {
                Logger.log(error.localizedDescription, category: \.default, level: .error)
            }
        }
        .productCellTabAction { product in
            router.present(UIHostingController(rootView: ProductDetailsView(product: product, router: router)))
        }
        
    }
    
    private var showMenuButton: some View {
        Button {
            TabBarViewModel.shared.presentMenu = true
        } label: {
            Image(.iconMenu)
        }
        .buttonStyle(.toolbarStyle)
    }
    
    private var welcomeView: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(L10n.Home.Welcome.title)
                    .font(.custom(size: 32, weight: .regular))
                Text(L10n.Home.Welcome.subtitle)
                    .font(.custom(size: 32, weight: .bold))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            filterButton
        }
    }
    
    private var filterButton: some View {
        Button {
            
        } label: {
            RoundedRectangle(cornerRadius: 5)
                .fill(.shPrimary)
                .frame(width: 64, height: 56)
                .overlay {
                    Image(.iconFilter)
                }
        }
    }
}

#Preview {
    TabBarView()
}

private struct SelectBrandView: View {
    let brands: [Brand]
    @ObservedObject var homeViewModel: HomeViewModel

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(brands) { brand in
                    cell(brand)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 24)
        }
        .frame(maxWidth: .infinity)
        .frame(height: 68)
        .padding(.horizontal, -24)
        .animation(.interactiveSpring(extraBounce: 0.2, blendDuration: 0.3),
                   value: homeViewModel.selectedBrandID)
    }
    
    @ViewBuilder
    private func cell(_ brand: Brand) -> some View {
        RoundedRectangle(cornerRadius: getCornerRadius(for: brand))
            .fill(getFillColor(for: brand))
            .frame(width: getWidth(for: brand))
            .onTapGesture {
                homeViewModel.selectedBrandID = brand.id
            }
            .overlay {
                VStack {
                    Image(brand.imageResource)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                    
                    if brand.id == homeViewModel.selectedBrandID {
                        Text(brand.name)
                            .foregroundStyle(.white)
                            .font(.small(weight: .medium))
                    }
                }
            }
           
    }
    
    private func getCornerRadius(for brand: Brand) -> CGFloat {
        return brand.id == homeViewModel.selectedBrandID ? 5 : 50
    }
    
    private func getWidth(for brand: Brand) -> CGFloat {
        brand.id == homeViewModel.selectedBrandID ? 120 : 80
    }
    
    private func getFillColor(for brand: Brand) -> Color {
        brand.id == homeViewModel.selectedBrandID ? .shPrimary : .shFiled
    }
}
