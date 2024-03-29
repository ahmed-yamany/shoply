//
//  SceneDelegate.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        AppRouter.shared.makeWindow(from: windowScene)
    }
}
