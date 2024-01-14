//
//  TabBarView.swift
//  Clarity
//
//  Created by Ahmed Yamany on 30/12/2023.
//

import SwiftUI

struct TabBarView: View {
    @StateObject private var viewModel = TabBarViewModel.shared
    
    var body: some View {
        ZStack {
            content
            
            if viewModel.presentMenu {
                viewModel.menuView()
                    .ignoresSafeArea()
                    .transition(.move(edge: .leading))
            }
        }
        .animation(.easeInOut, value: viewModel.presentMenu)
    }
    
    private var content: some View {
        ZStack(alignment: .bottom) {
            tabView
            TabBar(viewModel: viewModel)
                .transition(.move(edge: .bottom))
                .isHidden(viewModel.tabBarIsHidden)
        }
        .animation(.interactiveSpring(dampingFraction: 0.7, blendDuration: 0.3), value: viewModel.selectedTab)
        .animation(.interactiveSpring(dampingFraction: 0.6, blendDuration: 0.7), value: viewModel.tabBarIsHidden)
    }
    
    private var tabView: some View {
        TabView(selection: $viewModel.selectedTab) {
            ForEach(TabBarType.allCases, id: \.hashValue) { tabBarType in
                tabBarType.view
                    .tag(tabBarType)
                    .ignoresSafeArea()
                    .tint(Color.shSecondaryText)
                    .accentColor(Color.shSecondaryText)
            }
        }
        .onAppear {
            UITabBar.appearance().isHidden = true
        }
    }
}

private struct TabBar: View {
    @ObservedObject var viewModel: TabBarViewModel
    @Namespace var animation
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        HStack {
            ForEach(TabBarType.allCases, id: \.hashValue) { tabBarType in
                item(for: tabBarType)
                    .frame(maxWidth: .infinity)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 86)
        .padding(.horizontal, 12)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(colorScheme == .light ?  Color.shPrimaryText :  Color.shPrimary)
                .frame(height: 86)
        )
        .padding(.horizontal, 12)
    }
    
    @ViewBuilder
    private func item(for tabBarType: TabBarType) -> some View {
        VStack {
            if viewModel.selectedTab == tabBarType {
                Circle()
                    .fill(Color.shWhite)
                    .frame(height: 70)
                    .matchedGeometryEffect(id: "tabBar", in: animation)
            }
        }
        .overlay {
            VStack(spacing: 0) {
                Image(imageResource(for: tabBarType))
            }
        }
        .onTapGesture {
            if viewModel.selectedTab != tabBarType {
                viewModel.selectedTab = tabBarType
            }
        }
    }
    
    private func imageResource(for tabBarType: TabBarType) -> ImageResource {
        viewModel.selectedTab == tabBarType ? tabBarType.iconOnSelected : tabBarType.icon
    }
}

#Preview {
    TabBarView()
}
