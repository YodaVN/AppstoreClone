//
//  BaseTabBarController.swift
//  AppStore
//
//  Created by Nhan Nguyen on 4/26/19.
//  Copyright © 2019 Nhan Nguyen. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [createNavController(viewController: AppsController(), title: "Apps", imageName: "apps"),
                           createNavController(viewController: UIViewController(), title: "Today", imageName: "today"),
                           createNavController(viewController: AppsSearchController(), title: "Search", imageName: "search")]
    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String) -> UINavigationController {
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        navController.navigationBar.prefersLargeTitles = true
        
        return navController
    }
}
