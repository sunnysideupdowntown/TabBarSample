//
//  RightViewController.swift
//  TabBarSample
//
//  Created by YOUNGSUN on 4/8/23.
//

import UIKit

class RightViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem = TabItems.right.getTabBarItem()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
    }
}
