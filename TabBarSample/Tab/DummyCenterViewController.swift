//
//  DummyCenterViewController.swift
//  TabBarSample
//
//  Created by YOUNGSUN on 4/8/23.
//

import UIKit

class DummyCenterViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        self.tabBarItem = TabItems.center.getTabBarItem()
        self.tabBarItem.isEnabled = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
