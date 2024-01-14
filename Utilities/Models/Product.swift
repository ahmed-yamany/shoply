//
//  Product.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: String
    let imageUrl: String
    let name: String
    let price: Int
    let priceSymbol: String
    var colors: [String]?
}

extension Product {
    // swiftlint: disable all
    static var sample: Product {
        samples.first!
    }
    static var samples: [Product] {
        [
            .init(id: "1",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Zoom", price: 650, priceSymbol: "$"),
            .init(id: "2",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Max 270", price: 780, priceSymbol: "$"),
            .init(id: "3",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Zoom", price: 650, priceSymbol: "$"),
            .init(id: "4",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Max 270", price: 780, priceSymbol: "$"),
            .init(id: "5",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Zoom", price: 650, priceSymbol: "$"),
            .init(id: "6",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Max 270", price: 780, priceSymbol: "$")
        ]
    }
    
    static var discoverSamples: [Product] {
        [
            .init(id: "1",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Zoom", price: 650, priceSymbol: "$", colors: ["#AFA1FF", "#FF7474"]),
            .init(id: "2",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Max 270", price: 780, priceSymbol: "$", colors: ["#8DEDEB", "#F79AFF"]),
            .init(id: "3",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Zoom", price: 650, priceSymbol: "$", colors: ["#AFA1FF", "#FF7474"]),
            .init(id: "4",
                  imageUrl: "https://s3-alpha-sig.figma.com/img/49c7/bd9b/4db5fb33ffefaa7e9b87a4068d027cbe?Expires=1705881600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=T3IQ91ZS2yL-XM2il2p~Ap2Xf3Bf6NNlxl~s2lhCB1t3xICKBlmlQslem9vvkNSegGp3AtWgoPgK23KeO~-7bLMNpJ5EJ~ijEfaNI35afSuYqyHqRv1b3T~YDj4bX4UxCKuPT3RIRx8bKHbHkfMQPMYBN7gdMOZUMe4Ks2jzMWdFV37lOAtE5HDlKZvJ7swpYKgvPyymT709K~0ugbbMmgG8CFeIT33NPuWKfXaKC8PKG5Y9WYS9jDb-AAJ2MvRlDygApLplQPrQzZ4XeanhhQd1vZXDVHHj5W9tQOQ6a9~7Er5cwQ-8J10AcMlSKuUgnDISiWDHXXvbGD22jlZmZw__",
                  name: "Air Max 270", price: 780, priceSymbol: "$", colors: ["#8DEDEB", "#F79AFF"])
        ]
    }
    // swiftlint: enable all
}
