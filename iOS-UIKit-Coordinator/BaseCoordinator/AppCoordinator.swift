//
//  AppCoordinator.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

final class AppCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    var childrenCoordinator: [Coordinator] = []
    var navigationController: UINavigationController
    var coordinatorType: CoordinatorType = .app
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        setupAppCoordinator()
    }
    
    // MARK: - Internal Function
    
    private func setupAppCoordinator() {
        let tabBarCoordinator = TabBarCoordinator(
            navigationController: navigationController
        )
        
        childrenCoordinator.append(tabBarCoordinator)
        tabBarCoordinator.start()
    }
}
