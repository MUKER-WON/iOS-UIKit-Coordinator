//
//  FirstViewController.swift
//  iOS-UIKit-Coordinator
//
//  Created by Muker on 3/27/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    let viewModel: FirstViewModel
    
    // MARK: - UI Property
    
    private let pageNumberLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        return label
    }()
    
    private let secondViewFlowButton: UIButton = {
        let config = Configuration.buttonConfiguration(
            configuration: .filled(),
            title: "SecondView로 이동",
            backgroundColor: .cyan
        )
        let action = UIAction(handler: { _ in
            
        })
        let button = UIButton(configuration: config,primaryAction: action)
        return button
    }()
    
    // MARK: - Life Cycle
    
    init(viewModel: FirstViewModel) {
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
            secondViewFlowButton,
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

            secondViewFlowButton.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -10
            ),
            secondViewFlowButton.centerXAnchor.constraint(
                equalTo: view.centerXAnchor
            )
        ])
        
    }
    
}
