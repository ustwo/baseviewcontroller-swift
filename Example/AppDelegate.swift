//
//  AppDelegate.swift
//  iOS Example
//
//  Created by Aaron McTavish on 06/01/2016.
//  Copyright © 2016 BaseViewControllerSwift. All rights reserved.
//

import UIKit


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    // MARK: - Properties

    var window: UIWindow?

    
    // MARK: - UIApplicationDelegate

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        var profile = Profile()
        profile.name = "Jane"
        
        let viewController = ProfileViewController(profile: profile)
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.navigationBar.translucent = false
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }


}

