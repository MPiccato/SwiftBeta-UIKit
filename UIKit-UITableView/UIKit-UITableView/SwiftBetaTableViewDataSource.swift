//
//  SwiftBetaTableViewDataSource.swift
//  UIKit-UITableView
//
//  Created by Martin Piccato on 11/02/2023.
//

import Foundation
import UIKit

let house = [
    Device(title: "MacBook Air", imageDevice: "laptopcomputer"),
    Device(title: "iPad Pro 12,9", imageDevice: "ipad.gen2"),
    Device(title: "TV 32 pulgadas", imageDevice: "tv"),
    Device(title: "iPhone 12 Pro Max", imageDevice: "iphone.gen3")
    
]

let work = [
    
    Device(title: "iPhone", imageDevice: "iphone"),
    Device(title: "Mac Mini", imageDevice: "macmini"),
    Device(title: "airPods", imageDevice: "airpods"),
    Device(title: "Apple Watch", imageDevice: "applewatch")
    

]

let allDevices = [house, work]

final class SwiftBetaTableViewDataSource: NSObject, UITableViewDataSource {
    
    private let dataSource: [[Device]]
    
    init(dataSource: [[Device]]) {
        self.dataSource = dataSource
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SwiftBetaCustom", for: indexPath) as! SwiftBetaCustom
        
        let model = dataSource[indexPath.section][indexPath.row]
        
        cell.configure(model: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Dispositivos en el Hogar"
        } else {
            return "Dispositivos para Trabajar"
        }
        
    }
}
