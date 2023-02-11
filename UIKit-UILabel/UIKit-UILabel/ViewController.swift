//
//  ViewController.swift
//  UIKit-UILabel
//
//  Created by Martin Piccato on 11/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let swiftBetaLabel1: UILabel = {
        let label = UILabel()
        label.text = "Suscribete a MP Data Trading"
        label.font = UIFont(name: "Arial Rounded MT Bold", size: 26)
        label.textAlignment = .center
        label.textColor = .purple
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let swiftBetaLabel2: UILabel = {
        let label = UILabel()
        label.text = "Newsletters semanales con información relevante sobre la economía local, regional y nacional"
        label.font = .systemFont(ofSize: 12)
        label.textAlignment = .left
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let swiftBetaLabel3: UILabel = {
       
        let text = "Newsletters semanales con información relevante sobre la economía local, regional y nacional"
        
        let attributeText: [NSAttributedString.Key: Any] = [
            .underlineStyle: NSUnderlineStyle.single.rawValue,
            .underlineColor: UIColor.red,
            .foregroundColor: UIColor.white,
            .backgroundColor: UIColor.blue,
            .font: UIFont.systemFont(ofSize: 32)
        ]
        
        let attributeString = NSAttributedString(string: text, attributes: attributeText)
        
        
        let label = UILabel()
        label.attributedText = attributeString
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
        

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(swiftBetaLabel1)
        view.addSubview(swiftBetaLabel2)
        view.addSubview(swiftBetaLabel3)
        
        
        NSLayoutConstraint.activate([
            swiftBetaLabel1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaLabel1.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            
            swiftBetaLabel2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaLabel2.topAnchor.constraint(equalTo: swiftBetaLabel1.bottomAnchor, constant: 12),
            swiftBetaLabel2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            swiftBetaLabel2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            
            swiftBetaLabel3.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            swiftBetaLabel3.topAnchor.constraint(equalTo: swiftBetaLabel2.bottomAnchor, constant: 12),
            swiftBetaLabel3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            swiftBetaLabel3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32)
            
        
        ])
        
    }


}

