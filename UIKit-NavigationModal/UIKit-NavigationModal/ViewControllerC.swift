//
//  ViewControllerC.swift
//  UIKit-NavigationModal
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

class ViewControllerC: UIViewController {
    
    private lazy var dissmissButton: UIButton = {
        var configuration = UIButton.Configuration.bordered()
        configuration.title = "Cerrar Ventana C"
        let button = UIButton(type: .system, primaryAction: UIAction(handler: { _ in
            self.dismissButton()
        }))
        
        button.configuration = configuration
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        view.addSubview(dissmissButton)
        
        NSLayoutConstraint.activate([
            dissmissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dissmissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
    func dismissButton() {
        dismiss(animated: true)
    }
}
