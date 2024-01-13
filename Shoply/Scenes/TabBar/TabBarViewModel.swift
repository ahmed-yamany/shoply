//
//  TabBarViewModel.swift
//  Clarity
//
//  Created by Ahmed Yamany on 30/12/2023.
//

import SwiftUI

class TabBarViewModel: ObservableObject {
    static let shared = TabBarViewModel()
    
    @Published var selectedTab: TabBarType = .discover
    @Published var tabBarIsHidden: Bool = false
}
