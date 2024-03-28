//
//  FirstViewCoordinator.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

final class FirstViewCoordinator: FirstViewCoordinatorProtocol {
    
    var parentCoordinator: Coordinator?
    var childrenCoordinator: [Coordinator] = []
    var navigationController: UINavigationController
    var coordinatorType: CoordinatorType = .first
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        setupFirstViewCoordinator()
    }
    
    // MARK: - Internal Function
    
    private func setupFirstViewCoordinator() {
        let firstViewController = FirstViewController(
            viewModel: FirstViewModel()
        )
        
        navigationController.setViewControllers(
            [firstViewController],
            animated: true
        )
    }
}
