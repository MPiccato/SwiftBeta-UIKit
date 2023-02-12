//
//  ViewController.swift
//  UIKit-UIStackView
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let swiftBetaLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "In App Compras"
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32)
        return label
    }()
    
    private let swiftBetaStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 25
       
        return stackView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftBetaLabel)
        view.addSubview(swiftBetaStackView)
        
        NSLayoutConstraint.activate([
            swiftBetaLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            swiftBetaLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftBetaLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            swiftBetaStackView.topAnchor.constraint(equalTo: swiftBetaLabel.bottomAnchor, constant: 32),
            swiftBetaStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftBetaStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
        
        ["$1.99", "$2,99", "$3,99", "$4,99"].forEach {
            price in let button = UIButton(type: .system)
            var configuration = UIButton.Configuration.borderedTinted()
            configuration.title = price
            configuration.subtitle = "Suscripción"
            configuration.image = UIImage(systemName: "eurosign.circle.fill")
            configuration.imagePadding = 12
            configuration.baseBackgroundColor = .systemBlue
            button.configuration = configuration
            
            swiftBetaStackView.addArrangedSubview(button)
        }
    }


}

