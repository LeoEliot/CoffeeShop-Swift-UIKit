//
//  File.swift
//  CoffeeShop
//
//  Created by Виктор Косов on 24.11.2024.
//

import UIKit

class Home: UIViewController {
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.tintColor = .white
        label.font = UIFont(name: "Sora-Bold", size: .init(32))
        label.text = "Hello, Coffe Lovers!"
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "CoffeeDark")
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
