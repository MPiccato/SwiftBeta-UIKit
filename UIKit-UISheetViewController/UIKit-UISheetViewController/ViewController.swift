//
//  ViewController.swift
//  UIKit-UISheetViewController
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Suscribete a MP Data Trading"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.presentSheetViewControler()
            
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        view.addSubview(swiftBetaButton)
        
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    func presentSheetViewControler() {
        let viewControllerPresent = SheetViewController()
        
       
        
        present(viewControllerPresent, animated: true)
    }


}

