//
//  ViewControllerB.swift
//  UIKit-NavigationModal
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

class ViewControllerB: UIViewController {
    
    private lazy var dismissButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Cerrar ventana"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dissmissController()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var controllerCButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Ir a Pantalla C"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.presentControllerC()
            
        
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        
        view.addSubview(dismissButton)
        view.addSubview(controllerCButton)
        
        NSLayoutConstraint.activate([
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            controllerCButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            controllerCButton.topAnchor.constraint(equalTo: dismissButton.bottomAnchor, constant: 32)
        ])
    }
    
    func presentControllerC() {
        self.present(ViewControllerC(), animated: true)
    }
    
    func dissmissController() {
        dismiss(animated: true)
    }
}
