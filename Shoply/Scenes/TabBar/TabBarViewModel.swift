//
//  TabBarViewModel.swift
//  Clarity
//
//  Created by Ahmed Yamany on 30/12/2023.
//

import SwiftUI

class TabBarViewModel: ObservableObject {
    static let shared = TabBarViewModel()
    
    @Published var selectedTab: TabBarType = .home
    @Published var tabBarIsHidden: Bool = false
    @Published var presentMenu: Bool = false
    
    func menuView() -> some View {
        let router = NavigationRouter(navigationController: UINavigationController())
        let controller = UIHostingController(rootView: MenuView(router: router))
        controller.view.backgroundColor = .clear
        router.present(controller)
        return HostingView(rootController: controller)
    }
}
