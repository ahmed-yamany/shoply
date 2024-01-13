//
//  GoogleButton.swift
//  Shoply
//
//  Created by Ahmed Yamany on 10/01/2024.
//

import SwiftUI
import Firebase
import GoogleSignIn

extension LoggingCategories {
    var googleAuth: String { "Google-Auth"}
}

struct GoogleButton: View {
    let presentingViewController: UIViewController?
    let action: () -> Void
    
    var body: some View {
        Button {
            performGoogleSignIn()
        } label: {
            ZStack {
                content
                    .background {
                        content
                            .shadow(color: .gray, radius: 2, y: 2)
                            .blur(radius: 6)
                    }
                
                HStack(spacing: 20) {
                    Image(.iconGoogle)
                        .resizable()
                        .frame(width: 25, height: 25)
                    
                    Text("Continue with Google")
                        .font(Font.custom(size: 18, weight: .medium))
                        .foregroundStyle(Color.shPrimaryText)
                }
            }
        }
    }
    
    var content: some View {
        RoundedRectangle(cornerRadius: 5)
            .frame(height: 66)
            .foregroundStyle(.shPrimaryBackground)
    }
    
    func performGoogleSignIn() {
        guard let topMostViewController = UIApplication.shared.topMostViewController() else {
            Logger.log("Failed to get topMostViewController", category: \.googleAuth, level: .fault)
            return
        }
        //
        guard let clientID = FirebaseApp.app()?.options.clientID else {
            Logger.log("Failed to get firebase Client ID", category: \.googleAuth, level: .fault)
            return
        }
        //
        let config = GIDConfiguration(clientID: clientID)
        GIDSignIn.sharedInstance.configuration = config
        //
        startSignin(with: clientID, in: topMostViewController)
    }
    ///
    func startSignin(with clientID: String, in viewController: UIViewController) {
        Task {
            do {
                let result: GIDSignInResult = try await GIDSignIn.sharedInstance.signIn(withPresenting: viewController)
                await self.performSignin(to: result)
            } catch {
                Logger.log(error.localizedDescription, category: \.googleAuth, level: .fault)
            }
        }
    }
    ///
    func performSignin(to result: GIDSignInResult) async {
        guard let idToken = result.user.idToken?.tokenString else {
            Logger.log("Failed to get user id Token while google login", category: \.googleAuth, level: .fault)
            return
        }
        //
        let credential = GoogleAuthProvider.credential(withIDToken: idToken,
                                                       accessToken: result.user.accessToken.tokenString)
        do {
            let result = try await Auth.auth().signIn(with: credential)
            DispatchQueue.main.async {
                AppRouter.shared.authManager.getUser()
            }
        } catch {
            Logger.log(error.localizedDescription, category: \.googleAuth, level: .fault)
        }
    }
}

#Preview {
    GoogleButton(presentingViewController: UIViewController()) {}
        .padding()
}
