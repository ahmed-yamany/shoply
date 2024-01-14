//
//  MenuView.swift
//  Shoply
//
//  Created by Ahmed Yamany on 13/01/2024.
//

import SwiftUI
private struct MenuCell: Identifiable {
    var id = UUID()
    let title: String
    let action: () -> Void
}

struct MenuView: View {
    
    let router: Router
    fileprivate let cells: [MenuCell]
    init(router: Router) {
        self.router = router
        self.cells = [
            .init(title: "All Categories", action: {}),
            .init(title: "Track Order", action: {}),
            .init(title: "Discover All", action: {}),
            .init(title: "Location", action: {}),
            .init(title: "Payment Cards", action: {}),
            .init(title: "Orders", action: {}),
            .init(title: "Scan", action: {}),
            .init(title: "Settings", action: {})
        ]
    }
    
    @StateObject private var viewModel = MenuViewModel()
    var body: some View {
        HStack {
            content
                
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        .background(.black.opacity(0.5))
    }
    
    var content: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 28) {
                    profileView
                    listView
                    signoutButton
                }
                .padding(.horizontal, 24)
                .primaryStyle()
            }
            .frame(maxHeight: .infinity)
            .primaryStyle()
            .toolbarTitle("Menu")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    dismissButton
                }
            }
        }
        .frame(width: CGFloat.screenSize.width * 0.75)
    }
    
    private var dismissButton: some View {
        Button {
            TabBarViewModel.shared.presentMenu = false
        } label: {
            Image(systemName: "chevron.left")
        }
        .buttonStyle(.toolbarStyle)
    }
    
    private var profileView: some View {
        HStack {
            Image(.imageYamany)
                .aspectRatio(contentMode: .fit)
                .frame(width: 68, height: 68)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Ahmed Yamany")
                    .font(.custom(size: 18, weight: .medium))
                
                Text("Edit Profile")
                    .font(.custom(size: 14, weight: .medium))
                    .foregroundStyle(.shSecondaryText)
                    .onTapGesture { }
            }
            
            Spacer()
        }
    }
    
    private var listView: some View {
        VStack(alignment: .leading, spacing: 38) {
            ForEach(cells) { cell in
                listCell(cell)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    @ViewBuilder
    private func listCell(_ cell: MenuCell) -> some View {
        Text(cell.title)
            .font(.custom(size: 16, weight: .semibold))
    }
    
    private var signoutButton: some View {
        Button {
            try? AppRouter.shared.authManager.deleteUser()
        } label: {
            Image(systemName: "arrow.turn.up.right")
                .font(.custom(size: 16, weight: .medium))
                .foregroundStyle(.red)
            
            Text("Sign Out")
        }
    }
}

#Preview {
    TabBarView()
}
