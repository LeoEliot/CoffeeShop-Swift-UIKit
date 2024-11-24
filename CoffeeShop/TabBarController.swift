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
        self.tabBar.tintColor = UIColor(named: "CoffeeOrange")
        self.tabBar.barTintColor = .white
        self.tabBar.unselectedItemTintColor = UIColor(named: "CoffeeGray")
        let home = createViewController(name: "", icon: UIImage(named: "Home")!, view: DetailsViewController())
        
        let favourites = createViewController(name: "", icon: UIImage(named: "Heart")!, view: OrderViewController())
        let order = createViewController(name: "", icon: UIImage(named: "Bag")!, view: OrderViewController())
        let geo = createViewController(name: "", icon: UIImage(named: "Notification")!, view: OrderViewController())
        self.setViewControllers([home, favourites, order, geo], animated: true)
    }
    

    func createViewController(name: String, icon: UIImage, view: UIViewController) -> UINavigationController {
        let navigationController = UINavigationController(rootViewController: view)
        navigationController.tabBarItem.image = icon
        navigationController.tabBarItem.title = name
        return navigationController
    }
    
    

}
