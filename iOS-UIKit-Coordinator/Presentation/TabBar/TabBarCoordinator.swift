//
//  TabBarCoordinator.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

final class TabBarCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    var childrenCoordinator: [Coordinator] = []
    var navigationController: UINavigationController
    var coordinatorType: CoordinatorType = .tab
    var coordinatorProvider: CoordinatorProviderProtocol
    
    init(
        navigationController: UINavigationController,
        coordinatorProvier: CoordinatorProviderProtocol
    ) {
        self.navigationController = navigationController
        self.coordinatorProvider = coordinatorProvier
    }
    
    func start() {
        setupTabBarCoordinator()
    }
    
    // MARK: - Internal Function
    
    private func setupTabBarCoordinator() {
        let tabBarController = UITabBarController()
        let viewControllers = makeViewControllers()
        tabBarController.viewControllers = viewControllers
        setupTabBarAppearance(tabBarController: tabBarController)
        navigationController.setViewControllers(
            [tabBarController],
            animated: true
        )
    }
    
    private func setupTabBarAppearance(
        tabBarController: UITabBarController
    ) {
        let appearance = UITabBarAppearance()
        tabBarController.tabBar.standardAppearance = appearance
        tabBarController.tabBar.backgroundColor = .tabBar
        tabBarController.tabBar.tintColor = .tabBarTint
    }
    
    private func makeViewControllers() -> [UIViewController] {
        let viewControllers = TabBarType.allCases.map { tab in
            let navigationController = UINavigationController()
            navigationController.navigationBar.backgroundColor = .yellow
            navigationController.tabBarItem = tab.tabItem
            setupChildrenCoordinator(
                tab: tab,
                navigationController: navigationController
            )
            return navigationController
        }
        return viewControllers
    }
    
    private func setupChildrenCoordinator(
        tab: TabBarType,
        navigationController: UINavigationController
    ) {
        let coordinator = tab.makeChidrenCoordinator(
            navigationController: navigationController,
            coordinatorProvider: coordinatorProvider
        )
        addChildrenCoordinator(coordinator)
        coordinator.start()
    }
}
