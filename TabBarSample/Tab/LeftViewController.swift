//
//  LeftViewController.swift
//  TabBarSample
//
//  Created by YOUNGSUN on 4/8/23.
//

import UIKit

class LeftViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem = TabItems.left.getTabBarItem()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .red
    }
}
