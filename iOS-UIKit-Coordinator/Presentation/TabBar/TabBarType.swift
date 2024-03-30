//
//  TabBarType.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

enum TabBarType: Int, CaseIterable {
    
    case first
    case second
    
    var tabItem: UITabBarItem {
        switch self {
            case .first:
                return .init(
                    title: "First",
                    image: .init(systemName: "1.circle"),
                    tag: rawValue
                )
            case .second:
                return .init(
                    title: "Second",
                    image: .init(systemName: "2.circle"),
                    tag: rawValue
                )
        }
    }
    
    func makeChidrenCoordinator(
        navigationController: UINavigationController,
        coordinatorProvider: CoordinatorProviderProtocol
    ) -> Coordinator {
        switch self {
            case .first:
                let coordinator = FirstViewCoordinator(
                    navigationController: navigationController,
                    coordinatorProvier: coordinatorProvider
                )
                return coordinator
            case .second:
                let coordinator = SecondViewCoordinator(
                    navigationController: navigationController,
                    coordinatorProvier: coordinatorProvider
                )
                return coordinator
        }
    }
}
