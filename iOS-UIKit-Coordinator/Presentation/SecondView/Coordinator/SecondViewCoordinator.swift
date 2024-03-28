//
//  SecondViewCoordinator.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

final class SecondViewCoordinator: SecondViewCoordinatorProtocol {
    
    var parentCoordinator: Coordinator?
    var childrenCoordinator: [Coordinator] = []
    var navigationController: UINavigationController
    var coordinatorType: CoordinatorType = .second
    var coordinatorProvier: CoordinatorProviderProtocol
    
    init(
        navigationController: UINavigationController,
        coordinatorProvier: CoordinatorProviderProtocol
    ) {
        self.navigationController = navigationController
        self.coordinatorProvier = coordinatorProvier
    }
    
    func start() {
        setupSecondViewCoordinator()
    }
    
    // MARK: - Internal Function
    
    private func setupSecondViewCoordinator() {
        let secondViewController = SecondViewController(
            viewModel: SecondViewModel()
        )
        
        navigationController.setViewControllers(
            [secondViewController],
            animated: true
        )
    }
}
