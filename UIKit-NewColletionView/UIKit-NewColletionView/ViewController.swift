//
//  ViewController.swift
//  UIKit-NewColletionView
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

struct Device: Hashable {
    let id: UUID = UUID()
    let title: String
    let imageName: String
    
}

let home = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac Mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Pantallas", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv")
]

let office = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac Mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
   
]

class ViewController: UIViewController {
    lazy var swiftCollectionView: UICollectionView = {
        let configuration = UICollectionLayoutListConfiguration(appearance: .insetGrouped)
        let layout = UICollectionViewCompositionalLayout.list(using: configuration)
        
        let collectionView = UICollectionView(frame: .zero,
                                              collectionViewLayout: layout)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    lazy var dataSource: UICollectionViewDiffableDataSource<Int, Device> = {
        let deviceCell = UICollectionView.CellRegistration<UICollectionViewListCell, Device> { cell, indexPath, model in
            var listContentConfiguration = UIListContentConfiguration.cell()
            listContentConfiguration.text = model.title
            listContentConfiguration.image = UIImage(systemName: model.imageName)
            
            cell.contentConfiguration = listContentConfiguration
            
        }
        
        let dataSource = UICollectionViewDiffableDataSource<Int, Device>(collectionView: swiftCollectionView) { collectionView, indexPath, model in
            return collectionView.dequeueConfiguredReusableCell(using: deviceCell, for: indexPath, item: model)
            
        }
        
        return dataSource
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        swiftCollectionView.backgroundColor = .green
        view.addSubview(swiftCollectionView)
        
        NSLayoutConstraint.activate([
            swiftCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            swiftCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            swiftCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        var snapshot = dataSource.snapshot()
        snapshot.appendSections([0,1])
        snapshot.appendItems(home, toSection: 0)
        snapshot.appendItems(office, toSection: 1)
        dataSource.apply(snapshot)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            snapshot.appendItems([.init(title: "New Device", imageName: "appletv")], toSection:  0)
            snapshot.appendItems([.init(title: "New Device 2", imageName: "appletv")], toSection: 1)
            self.dataSource.apply(snapshot)
        }
    }


}

