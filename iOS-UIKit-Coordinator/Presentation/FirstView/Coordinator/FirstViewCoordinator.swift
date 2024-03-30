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
    var coordinatorProvier: CoordinatorProviderProtocol
    
    init(
        navigationController: UINavigationController,
        coordinatorProvier: CoordinatorProviderProtocol
    ) {
        self.navigationController = navigationController
        self.coordinatorProvier = coordinatorProvier
    }
    
    func start() {
        setupFirstViewCoordinator()
    }
    
    func startSecondView() {
        setupSecondView()
    }
    
    // MARK: - Internal Function
    
    private func setupFirstViewCoordinator() {
        let firstViewController = FirstViewController(
            viewModel: FirstViewModel(
                coordinator: self
            )
        )
        navigationController.setViewControllers(
            [firstViewController],
            animated: true
        )
    }
    
    private func setupSecondView() {
        let secondViewCoordinator = coordinatorProvier.makeSecondViewCoordinator(
            parentCoordinator: self,
            navigationController: navigationController
        )
        addChildrenCoordinator(secondViewCoordinator)
        secondViewCoordinator.start()
    }
}
