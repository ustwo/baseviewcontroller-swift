//
//  AppDelegate.swift
//  BaseViewControllerSwift
//
//  Created by Aaron McTavish on 06/01/2016.
//  Copyright © 2016 ustwo Fampany Ltd. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    // MARK: - Properties

    var window: UIWindow?

    
    // MARK: - UIApplicationDelegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        var profile = Profile()
        profile.name = "Jane"
        
        let viewController = ProfileViewController(profile: profile)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.isTranslucent = false
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }


}
