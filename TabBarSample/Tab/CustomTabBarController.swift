//
//  CustomTabBarController.swift
//  TabBarSample
//
//  Created by YOUNGSUN on 4/8/23.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    private lazy var centerButton: UIButton = {
        let button = UIButton()
        let icon = UIImage(systemName: "stop.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 40))
        button.setImage(icon, for: .normal)
        button.addTarget(self, action: #selector(showModal), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBar.backgroundColor = .white
        
        // 반드시 viewDidLoad에서 설정해줘야
        // viewDidLoad에서 tabBar.items와 tabBar.subviews가 비어 있지 않다.
        self.viewControllers = [LeftViewController(), DummyCenterViewController(), RightViewController()]
        
        self.addModalTabButton()
    }
    
    /// 탭 바의 center item button 위치에 modal을 띄우는 버튼을 추가한다.
    private func addModalTabButton() {
        
        guard let buttonIndex = self.tabBar.items?.firstIndex(where: { $0.tag == TabItems.centerTag}),
              buttonIndex < self.tabBar.subviews.count
        else {
            return
        }
        let targetButton = self.tabBar.subviews[buttonIndex]
        
        self.tabBar.addSubview(centerButton)
        centerButton.translatesAutoresizingMaskIntoConstraints = false
        centerButton.topAnchor.constraint(equalTo: targetButton.topAnchor).isActive = true
        centerButton.bottomAnchor.constraint(equalTo: targetButton.bottomAnchor).isActive = true
        centerButton.leadingAnchor.constraint(equalTo: targetButton.leadingAnchor).isActive = true
        centerButton.trailingAnchor.constraint(equalTo: targetButton.trailingAnchor).isActive = true
    }
    
    /// modal을 보여준다.
    @objc private func showModal() {
        let viewController = UIViewController()
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .coverVertical
        viewController.view.backgroundColor = .green
        self.present(viewController, animated: true)
    }
}
