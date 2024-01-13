//
//  ProductsSection.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

struct ProductCellActionKey: EnvironmentKey {
    static var defaultValue: (Product) -> Void = { _ in}
}

extension EnvironmentValues {
    var productCellAction: (Product) -> Void {
        get { self[ProductCellActionKey.self] }
        set { self[ProductCellActionKey.self] = newValue }
    }
}

extension View {
    @ViewBuilder
    func productCellTabAction(_ action: @escaping (Product) -> Void) -> some View {
        environment(\.productCellAction, action)
    }
}

struct ProductsSection: View {
    let products: [Product]
    private let columns: [GridItem] = [GridItem(.fixed(180)), GridItem(.fixed(180))]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(products) { product in
                ProductCell(product: product)
            }
        }
    }
}

struct ProductCell: View {
    let product: Product
    @Environment(\.productCellAction) var productCellAction

    var body: some View {
        VStack(spacing: 12) {
            image
            details
            colorsView
        }
        .onTapGesture {
            productCellAction(product)
        }
        .padding([.horizontal, .bottom])
       
    }
    
    var image: some View {
        RoundedRectangle(cornerRadius: 5)
            .fill(Color.shFiled)
            .frame(height: 180)
            .overlay {
                AsyncImage(url: URL(string: product.imageUrl)) { image in
                    image.image?
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 140, height: 140)
                        .rotationEffect(.degrees(-10))
                }
            }
           
    }
    
    var details: some View {
        VStack(alignment: .leading) {
            Text(product.name)
                .font(.custom(size: 20, weight: .regular))
            
            Text("\(product.priceSymbol) \(product.price)")
                .font(.custom(size: 20, weight: .bold))
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var colorsView: some View {
        HStack {
            if let colors = product.colors {
                ForEach(colors, id: \.self) { colorHex in
                    Circle()
                        .fill(Color(uiColor: UIColor(hexString: colorHex) ?? .black))
                }
            }
            Spacer()
        }
        .frame(height: 12)
    }
}

#Preview {
    TabBarView()
}
