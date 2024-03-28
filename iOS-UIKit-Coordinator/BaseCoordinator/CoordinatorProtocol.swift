//
//  Coordinator.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

protocol Coordinator {
    
    var parentCoordinator: Coordinator? { get set }
    var childrenCoordinator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    var coordinatorType: CoordinatorType { get }
    
    func start()
}

enum CoordinatorType {
    
    case app
    case tab
    case first
    case second
}
