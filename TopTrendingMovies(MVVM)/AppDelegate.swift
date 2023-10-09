////   /*
//
//  Project: TopTrendingMovies(MVVM)
//  File: AppDelegate.swift
//  Created by: Robert Bikmurzin
//  Date: 09.10.2023
//
//  Status: in progress | Decorated
//
//  */

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let navigationCOntroller = UINavigationController(rootViewController: MainViewController())
        window.rootViewController = navigationCOntroller
        window.makeKeyAndVisible()
        
        self.window = window
        return true
    }
}

