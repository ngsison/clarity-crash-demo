//
//  AppDelegate.swift
//  ClarityDemo
//
//  Created by Nathaniel Brion Sison on 1/17/25.
//

import UIKit
import Clarity

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let clarityConfig = ClarityConfig(projectId: "")
        clarityConfig.logLevel = .verbose
        ClaritySDK.initialize(config: clarityConfig)
        
        return true
    }
    
    func application(_ application: UIApplication,
                     configurationForConnecting connectingSceneSession: UISceneSession,
                     options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
}
