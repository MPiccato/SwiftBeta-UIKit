//
//  SwiftBetaCollectionCell.swift
//  UIKit-UICollectionView
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

final class SwiftBetaCollectionCell: UICollectionViewCell {
    
    private let swiftBetaStackview: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.layer.borderColor = UIColor.black.cgColor
        stackView.layer.borderWidth = 1
        return stackView
    }()
    
    private let deviceImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let deviceNameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize:24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        
        super.init(frame: .zero)
        addSubview(swiftBetaStackview)
        swiftBetaStackview.addArrangedSubview(deviceImageView)
        swiftBetaStackview.addArrangedSubview(deviceNameLabel)
        
        NSLayoutConstraint.activate([
            swiftBetaStackview.leadingAnchor.constraint(equalTo: leadingAnchor),
            swiftBetaStackview.trailingAnchor.constraint(equalTo: trailingAnchor),
            swiftBetaStackview.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(model: Device) {
        deviceImageView.image = UIImage(systemName: model.image)
        deviceNameLabel.text = model.name
    }
    
    
    
    
}
