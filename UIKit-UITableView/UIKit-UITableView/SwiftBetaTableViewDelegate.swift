//
//  SwiftBetaTableViewDelegate.swift
//  UIKit-UITableView
//
//  Created by Martin Piccato on 11/02/2023.
//

import Foundation
import UIKit

final class SwiftBetaTableViewDelegate: NSObject, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model = house[indexPath.row]
        print("Cell: \(model.title)")
    }
}
