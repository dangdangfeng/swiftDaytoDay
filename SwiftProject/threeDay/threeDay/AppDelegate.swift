//
//  AppDelegate.swift
//  threeDay
//
//  Created by taoxiaofei on 2017/7/3.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var viewController: ViewController = ViewController()

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let nav: UINavigationController = UINavigationController(rootViewController: viewController)
        
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
        
        return true
    }

}

