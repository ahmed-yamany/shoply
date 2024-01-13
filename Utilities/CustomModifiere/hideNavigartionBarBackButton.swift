//
//  hideNavigartionBarBackButton.swift
//  Shoply
//
//  Created by Ahmed Yamany on 11/01/2024.
//

import SwiftUI

@available(iOS 15.0, *)
public extension View {
    
   @ViewBuilder
   func hidenNavigationItemsBackButton() -> some View {
       background {
           NavigationItemsBackButtonHider()
       }
   }
}

struct NavigationItemsBackButtonHider: UIViewRepresentable {
    
    func makeUIView(context: Context) -> some UIView { UIView() }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.02) {
            uiView.parentViewController?.navigationItem.backButtonTitle = ""
            uiView.parentViewController?.navigationController?.navigationBar.backIndicatorImage = UIImage()
            uiView.parentViewController?.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage()
            uiView.parentViewController?.navigationController?.delegate = context.coordinator
        }
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate {
        let parent: NavigationItemsBackButtonHider
        
        init(parent: NavigationItemsBackButtonHider) {
            self.parent = parent
        }
        
        func navigationController(_ navigationController: UINavigationController,
                                  willShow viewController: UIViewController, animated: Bool) {
            viewController.navigationItem.backButtonTitle = ""
        }
    }
}
