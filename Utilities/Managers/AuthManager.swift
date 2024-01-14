//
//  AuthManager.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import Foundation
import Firebase

class AuthManager: ObservableObject {
    @Published var isLogin: Bool = false
    
    init() {
//        do { try deleteUser()} catch {}
        getUser()
    }
    
    @discardableResult
    func getUser() -> User? {
        if let user = Auth.auth().currentUser {
            isLogin = true
            return user
        }
        return nil
    }
    
    func deleteUser() throws {
        try Auth.auth().signOut()
        isLogin = false
    }
}
