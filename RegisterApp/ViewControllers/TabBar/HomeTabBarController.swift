//
//  HomeTabBarController.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 10/05/22.
//

import UIKit

class HomeTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func setViewControllers(_ viewControllers: [UIViewController]?, animated: Bool) {
        super.setViewControllers(viewControllers, animated: animated)
        
        self.tabBar.tintColor = .tabbarIconColor
        self.tabBar.isTranslucent = false
        UITabBar.appearance().barTintColor = .viewBackgroundColor
    }
}

