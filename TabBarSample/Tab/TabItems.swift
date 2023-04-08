//
//  TabItems.swift
//  TabBarSample
//
//  Created by YOUNGSUN on 4/8/23.
//

import UIKit

enum TabItems {
    case left
    case center
    case right
}

extension TabItems {
    
    static let centerTag: Int = 100
    
    func getTabBarItem() -> UITabBarItem? {
        
        switch self {
        case .left:     return UITabBarItem(title: "왼쪽",
                                            image: UIImage(systemName: "backward"),
                                            selectedImage: UIImage(systemName: "backward.fill"))
            
        case .center:   return UITabBarItem(title: nil, image: nil, tag: Self.centerTag)
            
        case .right:    return UITabBarItem(title: "오른쪽",
                                            image: UIImage(systemName: "forward"),
                                            selectedImage: UIImage(systemName: "forward.fill"))
        }
    }
}
