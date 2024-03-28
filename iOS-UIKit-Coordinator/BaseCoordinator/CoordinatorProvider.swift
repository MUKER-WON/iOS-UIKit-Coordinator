//
//  CoordinatorProvider.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/28/24.
//

import UIKit

final class CoordinatorProvider: CoordinatorProviderProtocol {
    func makeFirstViewCoordinator(
        parentCoordinator: Coordinator,
        navigationController: UINavigationController
    ) -> FirstViewCoordinatorProtocol {
        FirstViewCoordinator(
            navigationController: navigationController,
            coordinatorProvier: self
        )
    }
    
    func makeSecondViewCoordinator(
        parentCoordinator: Coordinator,
        navigationController: UINavigationController
    ) -> SecondViewCoordinatorProtocol {
        SecondViewCoordinator(
            navigationController: navigationController,
            coordinatorProvier: self
        )
    }
}
