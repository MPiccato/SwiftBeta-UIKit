//
//  ViewControllerB.swift
//  UIKit-NavigationPush
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit
class ViewControllerB: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .yellow
        title = "View Controller B"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next",
                                                                 style: .done,
                                                                 target:self,
                                                                 action: #selector(nextNavigationController))
        
    }
    
    @objc
    private func nextNavigationController() {
        self.navigationController?.pushViewController(ViewControllerC(),
                                                      animated: true)
    }
    
}
