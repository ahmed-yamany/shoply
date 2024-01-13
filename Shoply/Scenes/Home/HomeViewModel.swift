//
//  HomeViewModel.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var selectedBrandID: String = ""
    
    func getProducts() async throws -> [Product] {
        Product.samples
    }
    
    func getBrands() async throws -> [Brand] {
        Brand.samples
    }
}
