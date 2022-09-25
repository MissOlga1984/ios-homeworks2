//
//  TabBarController.swift
//  Navigation
//
//  Created by Mac on 15.09.2022.
//

import UIKit

class TabBarController: UITabBarController {
    var firstTabNavigationController : UINavigationController!
    var secondTabNavigationControoller : UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    private func setupUI() {
        firstTabNavigationController = UINavigationController.init(rootViewController: FeedViewController())
        secondTabNavigationControoller = UINavigationController.init(rootViewController: ProfileViewController())
    
    self.viewControllers = [firstTabNavigationController, secondTabNavigationControoller]
    
    let item1 = UITabBarItem(title: "Tape", image: UIImage(systemName: "house.fill"), tag: 0)
    let item2 = UITabBarItem(title: "Profile", image:  UIImage(systemName: "person.fill"), tag: 1)
    
    firstTabNavigationController.tabBarItem = item1
    secondTabNavigationControoller.tabBarItem = item2
        
        UITabBar.appearance().tintColor = UIColor (red: 0/255.0, green: 146/255.0, blue: 248/255.0, alpha: 1.0)
        UITabBar.appearance().backgroundColor = .orange
}
}
