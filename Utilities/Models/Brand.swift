//
//  Brand.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import Foundation

struct Brand: Identifiable {
    let id: String
    let imageResource: ImageResource
    let name: String
    let products: [Product]
}

extension Brand {
    // swiftlint: disable all
    static var samples: [Brand] {
        [
            .init(id: "1", imageResource: .logoBrandAll, name: "All", products: Product.samples),
            .init(id: "3", imageResource: .logoAdidas, name: "Adidas", products: Product.samples),
            .init(id: "4", imageResource: .logoPoma, name: "Poma", products: Product.samples),
            .init(id: "2", imageResource: .logoNike, name: "Nike", products: Product.samples)
        ]
    }
    // swiftlint: enable all
}
