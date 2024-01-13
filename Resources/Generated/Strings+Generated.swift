// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command file_length implicit_return prefer_self_in_static_references

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name vertical_whitespace_opening_braces
internal enum L10n {
  internal enum App {
    /// Localizable.strings
    ///   Shoply
    /// 
    ///   Created by Ahmed Yamany on 10/01/2024.
    internal static let remeberme = L10n.tr("Localizable", "app.remeberme", fallback: "Remember Me")
  }
  internal enum Discover {
    /// Discover All
    internal static let title = L10n.tr("Localizable", "discover.title", fallback: "Discover All")
    internal enum Welcome {
      /// Available
      internal static let subtitle = L10n.tr("Localizable", "discover.welcome.subtitle", fallback: "Available")
      /// 1001 Shoes Are
      internal static let title = L10n.tr("Localizable", "discover.welcome.title", fallback: "1001 Shoes Are")
    }
  }
  internal enum Forgotpassword {
    /// FORGOT PASSWORD
    internal static let header = L10n.tr("Localizable", "forgotpassword.header", fallback: "FORGOT PASSWORD")
    /// Enter email address we’ll send you an email
    internal static let subtitle = L10n.tr("Localizable", "forgotpassword.subtitle", fallback: "Enter email address we’ll send you an email")
    /// Forgot your Password?
    internal static let title = L10n.tr("Localizable", "forgotpassword.title", fallback: "Forgot your Password?")
    internal enum Button {
      /// Send Email
      internal static let forgotpassword = L10n.tr("Localizable", "forgotpassword.button.forgotpassword", fallback: "Send Email")
    }
    internal enum Field {
      internal enum Email {
        /// appsharks@gmail.com
        internal static let placeholder = L10n.tr("Localizable", "forgotpassword.field.email.placeholder", fallback: "appsharks@gmail.com")
        /// Email
        internal static let title = L10n.tr("Localizable", "forgotpassword.field.email.title", fallback: "Email")
      }
    }
  }
  internal enum Home {
    /// Home
    internal static let title = L10n.tr("Localizable", "home.title", fallback: "Home")
    internal enum Welcome {
      /// Products
      internal static let subtitle = L10n.tr("Localizable", "home.welcome.subtitle", fallback: "Products")
      /// Enjoy New Nike
      internal static let title = L10n.tr("Localizable", "home.welcome.title", fallback: "Enjoy New Nike")
    }
  }
  internal enum Login {
    /// Log in
    internal static let header = L10n.tr("Localizable", "login.header", fallback: "Log in")
    /// Enter password to get back your account!
    internal static let subtitle = L10n.tr("Localizable", "login.subtitle", fallback: "Enter password to get back your account!")
    /// Welcome Back!
    internal static let title = L10n.tr("Localizable", "login.title", fallback: "Welcome Back!")
    internal enum Button {
      /// ForgotPassword
      internal static let forgotpassword = L10n.tr("Localizable", "login.button.forgotpassword", fallback: "ForgotPassword")
      /// Log in
      internal static let login = L10n.tr("Localizable", "login.button.login", fallback: "Log in")
      /// Sign up
      internal static let signup = L10n.tr("Localizable", "login.button.signup", fallback: "Sign up")
    }
    internal enum Field {
      internal enum Email {
        /// enter your email
        internal static let placeholder = L10n.tr("Localizable", "login.field.email.placeholder", fallback: "enter your email")
        /// Email
        internal static let title = L10n.tr("Localizable", "login.field.email.title", fallback: "Email")
      }
      internal enum Password {
        /// enter your Password
        internal static let placeholder = L10n.tr("Localizable", "login.field.password.placeholder", fallback: "enter your Password")
        /// Password
        internal static let title = L10n.tr("Localizable", "login.field.password.title", fallback: "Password")
      }
    }
  }
  internal enum Onboarding {
    /// Awesome
    internal static let awesome = L10n.tr("Localizable", "onboarding.awesome", fallback: "Awesome")
    /// Branded
    internal static let branded = L10n.tr("Localizable", "onboarding.branded", fallback: "Branded")
    /// Get Started
    internal static let button = L10n.tr("Localizable", "onboarding.button", fallback: "Get Started")
    /// Enjoy your vacation with our super comfy shoes
    internal static let description = L10n.tr("Localizable", "onboarding.description", fallback: "Enjoy your vacation with our super comfy shoes")
    /// Nike
    internal static let nike = L10n.tr("Localizable", "onboarding.nike", fallback: "Nike")
    /// Shoes
    internal static let shoes = L10n.tr("Localizable", "onboarding.shoes", fallback: "Shoes")
    /// The
    internal static let the = L10n.tr("Localizable", "onboarding.the", fallback: "The")
  }
  internal enum ResetPassword {
    /// FORGOT PASSWORD
    internal static let header = L10n.tr("Localizable", "resetPassword.header", fallback: "FORGOT PASSWORD")
    /// Keep a password to easily login to your account
    internal static let subtitle = L10n.tr("Localizable", "resetPassword.subtitle", fallback: "Keep a password to easily login to your account")
    /// Reset Password
    internal static let title = L10n.tr("Localizable", "resetPassword.title", fallback: "Reset Password")
    internal enum Button {
      /// Done
      internal static let done = L10n.tr("Localizable", "resetPassword.button.done", fallback: "Done")
    }
    internal enum Field {
      internal enum Confirmpassword {
        /// Confirm New Password
        internal static let placeholder = L10n.tr("Localizable", "resetPassword.field.confirmpassword.placeholder", fallback: "Confirm New Password")
        /// Confirm Password
        internal static let title = L10n.tr("Localizable", "resetPassword.field.confirmpassword.title", fallback: "Confirm Password")
      }
      internal enum Password {
        /// Password
        internal static let placeholder = L10n.tr("Localizable", "resetPassword.field.password.placeholder", fallback: "Password")
        /// Password
        internal static let title = L10n.tr("Localizable", "resetPassword.field.password.title", fallback: "Password")
      }
    }
  }
  internal enum Signup {
    /// Sign up
    internal static let header = L10n.tr("Localizable", "signup.header", fallback: "Sign up")
    /// Enter email address to create an account!
    internal static let subtitle = L10n.tr("Localizable", "signup.subtitle", fallback: "Enter email address to create an account!")
    /// Create and Account
    internal static let title = L10n.tr("Localizable", "signup.title", fallback: "Create and Account")
    internal enum Button {
      /// Log in
      internal static let login = L10n.tr("Localizable", "signup.button.login", fallback: "Log in")
      /// Sign up
      internal static let signup = L10n.tr("Localizable", "signup.button.signup", fallback: "Sign up")
    }
    internal enum Field {
      internal enum Email {
        /// enter your email
        internal static let placeholder = L10n.tr("Localizable", "signup.field.email.placeholder", fallback: "enter your email")
        /// Email
        internal static let title = L10n.tr("Localizable", "signup.field.email.title", fallback: "Email")
      }
      internal enum Password {
        /// enter your Password
        internal static let placeholder = L10n.tr("Localizable", "signup.field.password.placeholder", fallback: "enter your Password")
        /// Password
        internal static let title = L10n.tr("Localizable", "signup.field.password.title", fallback: "Password")
      }
      internal enum Username {
        /// enter your username
        internal static let placeholder = L10n.tr("Localizable", "signup.field.username.placeholder", fallback: "enter your username")
        /// Username
        internal static let title = L10n.tr("Localizable", "signup.field.username.title", fallback: "Username")
      }
    }
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name vertical_whitespace_opening_braces

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg..., fallback value: String) -> String {
    let format = BundleToken.bundle.localizedString(forKey: key, value: value, table: table)
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

// swiftlint:disable convenience_type
private final class BundleToken {
  static let bundle: Bundle = {
    #if SWIFT_PACKAGE
    return Bundle.module
    #else
    return Bundle(for: BundleToken.self)
    #endif
  }()
}
// swiftlint:enable convenience_type
