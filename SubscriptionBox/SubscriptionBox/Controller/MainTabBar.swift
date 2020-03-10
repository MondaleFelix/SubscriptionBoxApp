//
//  MainTabBar.swift
//  SubscriptionBox
//
//  Created by Mondale on 3/2/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import SwiftUI
import UIKit

class MainTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func createTabBar() -> UITabBarController {
        let tabbar = UITabBarController()
        tabbar.viewControllers = [ createHomeNC(), createNewNC(), createHistoryNC(), createProfileNC()]
        return tabbar
    }
    
    func createHomeNC() -> UINavigationController {
        let homeVC = NewHomeVC()
        
        homeVC.tabBarItem.title = "Home"
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named:"home"), tag: 0)

        return UINavigationController(rootViewController: homeVC)
    }
    
    func createNewNC() -> UINavigationController {
        let newBoxVC = NewBoxVC()
        newBoxVC.title = "New Box"
        newBoxVC.tabBarItem = UITabBarItem(title: "New Box", image: UIImage(named:"newBox"), tag: 1)

        return UINavigationController(rootViewController: newBoxVC)

    }
    
    func createHistoryNC() -> UINavigationController {
        let historyVC = HistoryVC()
        historyVC.title = "Past Boxes"
        historyVC.tabBarItem = UITabBarItem(title: "Past Boxes", image: UIImage(named:"star"), tag: 2)

        return UINavigationController(rootViewController: historyVC)

    }
    
    func createProfileNC() -> UINavigationController{
        let profileVC = ContentView()
        let hostNavVC = UIHostingController(rootView: profileVC)

        hostNavVC.title = "Profile"
        hostNavVC.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named:"pastBox"), tag: 3)

        return UINavigationController(rootViewController: hostNavVC)

    }
    
}
