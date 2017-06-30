//
//  AppDelegate.swift
//  OneDay
//
//  Created by taoxiaofei on 2017/6/29.
//  Copyright © 2017年 Deter. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var firstViewController: FirstViewController!
    var secondViewController: SecondViewController!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame:UIScreen.main.bounds)
        self.window!.backgroundColor = .white
        
        firstViewController = FirstViewController()
        let navigationController1 = UINavigationController(rootViewController: firstViewController)
        navigationController1.tabBarItem = UITabBarItem(title: "one", image: UIImage(named: "tabbar_icon_found_normal"), selectedImage: UIImage(named: "tabbar_icon_found_highlight")?.withRenderingMode(.alwaysOriginal))
        
        secondViewController = SecondViewController()
        let navigationController2 = UINavigationController(rootViewController: secondViewController)
        navigationController2.tabBarItem = UITabBarItem(title: "two", image: UIImage(named:"tabbar_icon_reader_normal"), selectedImage: UIImage(named:"tabbar_icon_reader_highlight")?.withRenderingMode(.alwaysOriginal))
        
        let tab = UITabBarController()
        tab.setViewControllers([navigationController1,navigationController2], animated: true)
        tab.tabBar.tintColor = .red
        
        self.window!.rootViewController = tab;
        self.window!.makeKeyAndVisible()
        
        return true
    }
    
}

