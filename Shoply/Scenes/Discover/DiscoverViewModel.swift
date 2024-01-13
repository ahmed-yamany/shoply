//
//  DiscoverViewModel.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

class DiscoverViewModel: ObservableObject {
    
    func getProducts() async throws -> [Product] {
        Product.discoverSamples
    }
}
