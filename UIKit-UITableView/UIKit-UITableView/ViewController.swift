//
//  ViewController.swift
//  UIKit-UITableView
//
//  Created by Martin Piccato on 11/02/2023.
//

import UIKit

struct Device {
    let title: String
    let imageDevice: String
    
}



class ViewController: UIViewController {
 
    
    
    private let deviceTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private var dataSource: SwiftBetaTableViewDataSource?
    private var delegate: SwiftBetaTableViewDelegate?
    
    override func loadView() {
        let tableView = UITableView()
        self.dataSource = SwiftBetaTableViewDataSource(dataSource: allDevices)
        self.delegate = SwiftBetaTableViewDelegate()
        tableView.dataSource = dataSource
        tableView.delegate = delegate
        tableView.register(SwiftBetaCustom.self, forCellReuseIdentifier: "SwiftBetaCustom")
        view = tableView
        
        
        
    }
    
    
}
  
  

    


