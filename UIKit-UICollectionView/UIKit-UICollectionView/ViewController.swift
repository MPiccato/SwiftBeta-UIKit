//
//  ViewController.swift
//  UIKit-UICollectionView
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

struct Device {
    let name: String
    let image: String
}

let house = [
    Device(name: "Computadora", image: "desktopcomputer"),
    Device(name: "Tv", image: "tv"),
    Device(name: "iPad", image: "ipad.gen2"),
    
    Device(name: "Computadora", image: "desktopcomputer"),
    Device(name: "Tv", image: "tv"),
    Device(name: "iPad", image: "ipad.gen2"),
    Device(name: "Computadora", image: "desktopcomputer"),
    Device(name: "Tv", image: "tv"),
    Device(name: "iPad", image: "ipad.gen2"),
    Device(name: "Computadora", image: "desktopcomputer"),
    Device(name: "Tv", image: "tv"),
    Device(name: "iPad", image: "ipad.gen2"),
     
]

class ViewController: UIViewController, UICollectionViewDataSource {
  
    

    
    
    
    private let swiftBetaCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = .init(width:200, height: 60)
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 100
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        swiftBetaCollectionView.dataSource = self
        swiftBetaCollectionView.register(SwiftBetaCollectionCell.self, forCellWithReuseIdentifier: "SwiftBetaCollectionCell")
        view.addSubview(swiftBetaCollectionView)
        
        NSLayoutConstraint.activate([
            swiftBetaCollectionView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            swiftBetaCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftBetaCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            swiftBetaCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        // Do any additional setup after loading the view.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        house.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = swiftBetaCollectionView.dequeueReusableCell(withReuseIdentifier: "SwiftBetaCollectionCell", for: indexPath) as! SwiftBetaCollectionCell
        cell.backgroundColor = .red
        
        let model = house[indexPath.row]
        
        cell.configure(model: model)
        
        return cell
    }



}

