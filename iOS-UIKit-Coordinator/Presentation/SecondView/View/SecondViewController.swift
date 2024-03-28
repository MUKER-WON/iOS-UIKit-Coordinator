//
//  SecondViewController.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    let viewModel: SecondViewModel
    
    // MARK: - UI Property
    
    private let pageNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "2"
        return label
    }()
    
    // MARK: - Life Cycle
    
    init(viewModel: SecondViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Internal Function
    
    private func configureUI() {
        view.backgroundColor = .systemBackground
        self.navigationController?.isNavigationBarHidden = true
        
        [
            pageNumberLabel,
        ].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            pageNumberLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 0
            ),
            pageNumberLabel.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            ),

        ])
        
    }
}
