//
//  AppRouter.swift
//  Grocer
//
//  Created by Ahmed Yamany on 01/1/2023.
//

import UIKit
import SwiftUI
import Combine

final class AppRouter: Router {
    public static let shared = AppRouter()
    
    var window: UIWindow?
    var parentViewController: UIViewController?
    
    @ObservedObject var authManager = AuthManager()
    private var cancellable: AnyCancellable?
    private init() { }
    
    func makeWindow(from windowScene: UIWindowScene) {
        let window = UIWindow(windowScene: windowScene)
        window.makeKeyAndVisible()
        self.window = window
        
        cancellable =  AnyCancellable(authManager.$isLogin.sink { isLogin in
            self.updateRootViewController(isLogin)
        })
    }
    
    func present(_ viewController: UIViewController, animated: Bool = true, completion: @escaping () -> Void = {}) {
        guard let window else {
            Logger.log("App Router Window is nil", category: \.default, level: .fault)
            return
        }
        window.rootViewController = viewController
    }
    
    func dismiss(animated: Bool = true, completion: @escaping () -> Void = {}) {
        do {
            try authManager.deleteUser()
        } catch {
            Logger.log(error.localizedDescription, category: \.default, level: .fault)
        }
    }
    
    private func updateRootViewController(_ isLogin: Bool) {
        if isLogin {
            self.present(authViewController())
        } else {
            self.present(notAuthViewController())
        }
    }
    
    private func authViewController() -> UIViewController {
        UIHostingController(rootView: TabBarView().environment(\.colorScheme, .light))
    }
    
    private func notAuthViewController() -> UIViewController {
        let router = ModalRouter()
        let controller = UIHostingController(rootView: SplashView(router: router))
        router.present(controller)
        return router.parentViewController ?? UIViewController()
    }
}
