//
//  TabBarType.swift
//  Grocer
//
//  Created by Ahmed Yamany on 07/01/2024.
//

import SwiftUI

enum TabBarType: String, CaseIterable, Hashable {
    case home, discover, wishlist, message, profile
    
    var icon: ImageResource {
        switch self {
            case .home: .tabBarHome
            case .discover: .tabBarDiscover
            case .wishlist: .tabBarWishlist
            case .message: .tabBarMessage
            case .profile: .tabBarProfile
        }
    }
    
    var iconOnSelected: ImageResource {
        switch self {
            case .home: .tabBarHomeSelected
            case .discover: .tabBarDiscoverSelected
            case .wishlist: .tabBarWishlistSelected
            case .message: .tabBarMessageSelected
            case .profile: .tabBarProfileSelected
        }
    }
    @ViewBuilder
    var view: some View {
        switch self {
            case .home: homeView()
            case .discover: discoverView()
            case .wishlist: wishlistView()
            case .message: messageView()
            case .profile: profileView()
        }
    }
    
    private func homeView() -> some View {
        let router = NavigationRouter(navigationController: UINavigationController())
        let controller = UIHostingController(rootView: HomeView(router: router))
        router.present(controller)
        return HostingView(rootController: router.navigationController)
    }
    
    private func discoverView() -> some View {
        let router = NavigationRouter(navigationController: UINavigationController())
        let controller = UIHostingController(rootView: DiscoverView(router: router))
        router.present(controller)
        return HostingView(rootController: router.navigationController)
    }
    
    private func wishlistView() -> some View {
        WishlistView()
//        let router = NavigationRouter(navigationController: UINavigationController())
//        let controller = UIHostingController(rootView: StoreView(router: router))
//        router.present(controller)
//        return HostingView(rootController: router.navigationController)
    }
    
    private func messageView() -> some View {
        MessageView()
    }
    
    private func profileView() -> some View {
        ProfileView()
    }
}
