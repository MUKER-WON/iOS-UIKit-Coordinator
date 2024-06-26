//
//  FirstViewModel.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import Foundation

final class FirstViewModel {
    
    private let coordinator: FirstViewCoordinatorProtocol
    
    init(coordinator: FirstViewCoordinatorProtocol) {
        self.coordinator = coordinator
    }
    
    func startSecondView() {
        coordinator.startSecondView()
    }
    
}
