//
//  ViewController.swift
//  FlowController
//
//  Created by Trevor Beaton on 9/26/23.
//

import UIKit

class ViewControllerA: UIViewController {

    var coordinator: MainCoordinator?
    
    var dataToPass = "Hello World"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViews()
    }

    let navigationButtonB: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitle("Navigate to B", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(navigateToViewControllerB), for: .touchUpInside)
       return button
    }()
    
    let navigationButtonC: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitle("Navigate to C", for: .normal)
        button.backgroundColor = .purple
        button.addTarget(self, action: #selector(navigateToViewControllerC), for: .touchUpInside)
       return button
    }()
    
    let navigationButtonD: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitle("Navigate to D", for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(navigateToViewControllerD), for: .touchUpInside)
       return button
    }()
    
    let navigationButtonE: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitle("Navigate to E", for: .normal)
        button.backgroundColor = .magenta
        button.addTarget(self, action: #selector(navigateToViewControllerE), for: .touchUpInside)
       return button
    }()
    
    private func setUpViews() {
        view.backgroundColor = .white
        
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.addArrangedSubview(navigationButtonB)
        stackView.addArrangedSubview(navigationButtonC)
        stackView.addArrangedSubview(navigationButtonD)
        stackView.addArrangedSubview(navigationButtonE)
        
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -250),
        ])
    }
    
    @objc func navigateToViewControllerB() {
        coordinator?.navigateToViewControllerB(with: "Hello, World!")
        print("navigateToViewControllerB - Button Pressed")
       }

    @objc func navigateToViewControllerC() {
        coordinator?.navigateToViewControllerC()
        print("navigateToViewControllerC - Button Pressed")
       }
    
    @objc func navigateToViewControllerD() {
        coordinator?.navigateToViewControllerD()
        print("navigateToViewControllerD - Button Pressed")
       }
    
    @objc func navigateToViewControllerE() {
        coordinator?.navigateToViewControllerE()
        print("navigateToViewControllerE - Button Pressed")
       }
    
    
    
    
    
    
}

