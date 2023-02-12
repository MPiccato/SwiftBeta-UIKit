//
//  ViewController.swift
//  UIKit-NavigationModal
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

class ViewControllerA: UIViewController {
    
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Present View Controller B"
        configuration.baseForegroundColor = UIColor.black
        
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.startNavigation()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .green
        view.addSubview(swiftBetaButton)
        
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func startNavigation() {
        self.present(ViewControllerB(), animated: true)
    }


}

