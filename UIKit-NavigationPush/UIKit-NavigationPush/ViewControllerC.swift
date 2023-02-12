//
//  ViewControllerC.swift
//  UIKit-NavigationPush
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

class ViewControllerC: UIViewController {
    
    private lazy var swiftBetaButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Suscribete a MP Data Trading"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.suscribeteMPData()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftBetaButtonAnterior: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Ir al ViewController Anterior"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.viewControllerAnterior()
        }))
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var swiftBetaControllerInicio: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Ir al Controller principal"
        
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.viewControllerInicio()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        title = "View Controller C"
        
        view.addSubview(swiftBetaButton)
        view.addSubview(swiftBetaButtonAnterior)
        view.addSubview(swiftBetaControllerInicio)
        
        NSLayoutConstraint.activate([
            swiftBetaButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            swiftBetaButtonAnterior.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaButtonAnterior.topAnchor.constraint(equalTo: swiftBetaButton.bottomAnchor, constant: 32),
            
            swiftBetaControllerInicio.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaControllerInicio.topAnchor.constraint(equalTo: swiftBetaButtonAnterior.bottomAnchor, constant: 32)
        ])
    }
    
    func viewControllerAnterior() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func viewControllerInicio() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    func suscribeteMPData() {
        self.present(ViewControllerD(), animated: true)
    }
}
