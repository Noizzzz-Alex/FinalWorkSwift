//
//  MainScreen.swift
//  FinalWorkSwift
//
//  Created by Александр Харлампов on 24.01.2024.
//

import UIKit

class MainScreen: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }

    private func setupTabBar() {
        viewControllers = [
            generateViewController(viewController: DepartureScreen(), imageName: "DepartureIcon", title: "Departure"),
            generateViewController(viewController: ArrivalScreen(), imageName: "ArrivalIcon", title: "Arrival"),
            
        ]
    }

    internal func generateViewController(
        viewController: UIViewController, imageName: String, title: String) -> UIViewController {
        let controller = UINavigationController(rootViewController: viewController)
        controller.tabBarItem.image = UIImage(named: imageName)
        controller.tabBarItem.title = title
        controller.navigationItem.title = title
        return controller
    }
}


