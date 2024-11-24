//
//  TabBarController.swift
//  CoffeeShop
//
//  Created by Виктор Косов on 24.11.2024.
//

import UIKit

class TabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .systemBlue
        self.tabBar.barTintColor = .white
        self.tabBar.unselectedItemTintColor = .gray
        let details = createViewController(name: "Details", icon: UIImage(systemName: "info.circle")!, view: DetailsViewController())
        
        let order = createViewController(name: "Order", icon: UIImage(systemName: "cart")!, view: OrderViewController())
        self.setViewControllers([details, order], animated: true)
    }
    

    func createViewController(name: String, icon: UIImage, view: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: view)
        navigationController.tabBarItem.image = icon
        navigationController.tabBarItem.title = name
        return navigationController
    }

}
