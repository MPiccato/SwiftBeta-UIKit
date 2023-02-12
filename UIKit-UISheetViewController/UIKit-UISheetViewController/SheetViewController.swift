//
//  SheetViewController.swift
//  UIKit-UISheetViewController
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

class SheetViewController: UIViewController {
    
    private let swiftBetaLabel: UILabel = {
        let label = UILabel()
        label.text = "Suscribete a MP Data Trading"
        label.font = .systemFont(ofSize: 24)
        label.textColor = .white
        label.numberOfLines = 0
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
        
        
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        view.addSubview(swiftBetaLabel)
        
        NSLayoutConstraint.activate([
            swiftBetaLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        guard let presentationController = presentationController as? UISheetPresentationController else {
            return
        }
        
        presentationController.detents = [.medium()]
        presentationController.selectedDetentIdentifier = .medium
        presentationController.prefersGrabberVisible = true
        presentationController.preferredCornerRadius = 20
        
    }
}
