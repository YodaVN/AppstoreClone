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
        
        let redViewController = UIViewController()
        redViewController.view.backgroundColor = .red
        let redNavigationController = UINavigationController(rootViewController: redViewController)
        redNavigationController.tabBarItem.title = "Red"
        
        let blueViewController = UIViewController()
        blueViewController.view.backgroundColor = .blue
        let blueNavigationController = UINavigationController(rootViewController: blueViewController)
        blueNavigationController.tabBarItem.title = "Blue"
        
        viewControllers = [redNavigationController, blueNavigationController]
    }
}
