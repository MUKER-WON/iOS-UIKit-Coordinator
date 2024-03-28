//
//  Coordinator.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

protocol Coordinator: AnyObject {
    
    var parentCoordinator: Coordinator? { get set }
    var childrenCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    var coordinatorType: CoordinatorType { get }
    
    func start()
}

extension Coordinator {
    
    func addChildrenCoordinator(_ coordinator: Coordinator) {
        childrenCoordinator.append(coordinator)
    }
}
