//
//  AppDelegate.swift
//  MarvelAPI
//
//  Created by vandcarlosjunior@gmail.com on 07/17/2020.
//  Copyright (c) 2020 vandcarlosjunior@gmail.com. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController(rootViewController: MainViewController())
        self.window?.makeKeyAndVisible()

        // Override point for customization after application launch.
        return true
    }

}