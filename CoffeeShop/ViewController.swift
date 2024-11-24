//
//  ViewController.swift
//  CoffeeShop
//
//  Created by Виктор Косов on 24.11.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Get started", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont(name: "Sora-SemiBold", size: 16)
        button.tintColor = .white
        button.backgroundColor = UIColor(named: "CoffeeOrange")
        button.layer.cornerRadius = 20
        button.addTarget(self, action: #selector(mainButtonTapped), for: .touchUpInside)
        return button
    }()
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Fall in Love with Coffee in Blissful Delight!"
        label.textColor = .white
        label.font = UIFont(name: "Sora-SemiBold", size: 32)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var descLabel: UILabel = {
        let label = UILabel()
        label.text = "Welcome to our cozy coffee corner, where every cup is a delightful for you."
        label.textColor = .white
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: "Sora-Regular", size: 14)
        label.textAlignment = .center
        return label
    }()
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "6")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupLayout()
        addContsraints()
    }

    func setupLayout() {
        view.addSubview(imageView)
        view.addSubview(titleLabel)
        view.addSubview(descLabel)
        view.addSubview(mainButton)
    }
    
    func addContsraints() {
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: -47),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 47),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -150),
            
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor,constant: -40),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            descLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 10),
            descLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            descLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            mainButton.topAnchor.constraint(equalTo: descLabel.bottomAnchor,constant: 20 ),
            mainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mainButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @IBAction func mainButtonTapped(_ sender: Any) {
        present(TabBarController(), animated: true, completion: nil)
    }

}

