//
//  AppDelegate.swift
//  LMessenger
//
//  Created by 김동현 on 1/13/25.
//

import UIKit
import FirebaseCore
import FirebaseAuth
import GoogleSignIn

// https://firebase.google.com/docs/auth/ios/google-signin?hl=ko
class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure ()
    return true
  }
    
    func application(_ app: UIApplication,
                     open url: URL,
                     options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
      return GIDSignIn.sharedInstance.handle(url)
    }
}


