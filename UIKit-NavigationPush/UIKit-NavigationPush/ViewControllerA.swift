//
//  ViewController.swift
//  UIKit-NavigationPush
//
//  Created by Martin Piccato on 12/02/2023.
//

import UIKit

class ViewControllerA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        title = "View Controller A"
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next",
                                                                 style: .done,
                                                                 target: self,
                                                                 action: #selector(nextNavigationController))
    }
    
    @objc
    private func nextNavigationController() {
        self.navigationController?.pushViewController(ViewControllerB(), animated: true)
    }
                                                                 


}

