//
//  MainTabBar.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/2/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit

class MainTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func createTabBar() -> UITabBarController {
        let tabbar = UITabBarController()
        tabbar.viewControllers = [createHomeNC(), createNewNC(), createHistoryNC(), createProfileNC()]
        return tabbar
    }
    
    func createHomeNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.title = "Home"
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    
    func createNewNC() -> UINavigationController {
        let newBoxVC = NewBoxVC()
        newBoxVC.title = "New Box"
        newBoxVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 1)
        return UINavigationController(rootViewController: newBoxVC)

    }
    
    func createHistoryNC() -> UINavigationController {
        let homeVC = HomeVC()
        homeVC.title = "Home"
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
        return UINavigationController(rootViewController: homeVC)

    }
    
    func createProfileNC() -> UINavigationController{
        let homeVC = HomeVC()
        homeVC.title = "Home"
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 3)
        return UINavigationController(rootViewController: homeVC)

    }
    
}
