//
//  CoordinatorProvider.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/28/24.
//

import UIKit

protocol CoordinatorProviderProtocol {
    func makeFirstViewCoordinator(
        parentCoordinator: Coordinator,
        navigationController: UINavigationController
    ) -> FirstViewCoordinatorProtocol
    
    func makeSecondViewCoordinator(
        parentCoordinator: Coordinator,
        navigationController: UINavigationController
    ) -> SecondViewCoordinatorProtocol
}
