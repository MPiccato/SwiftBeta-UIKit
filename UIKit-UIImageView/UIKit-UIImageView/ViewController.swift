//
//  ViewController.swift
//  UIKit-UIImageView
//
//  Created by Martin Piccato on 11/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let swiftBetaImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(systemName: "gamecontroller.fill")
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = .purple
        
        imageView.layer.cornerRadius = 150
        imageView.layer.borderWidth = 10
        imageView.layer.borderColor = UIColor.blue.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftBetaImageView)
        
        NSLayoutConstraint.activate([
        
            swiftBetaImageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            swiftBetaImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaImageView.widthAnchor.constraint(equalToConstant: 300),
            swiftBetaImageView.heightAnchor.constraint(equalToConstant: 300)
            
        ])
    }


}

