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
    
    func startFirstView() {
        setupFirstViewcoordinator()
    }
    
    // MARK: - Internal Function
    
    private func setupSecondViewCoordinator() {
        let secondViewController = SecondViewController(
            viewModel: SecondViewModel(
                coordinator: self
            )
        )
        navigationController.setViewControllers(
            [secondViewController],
            animated: true
        )
    }
    
    private func setupFirstViewcoordinator() {
        let firstViewCoordinator = coordinatorProvier.makeFirstViewCoordinator(
            parentCoordinator: self,
            navigationController: navigationController
        )
        addChildrenCoordinator(firstViewCoordinator)
        firstViewCoordinator.start()
    }
}
