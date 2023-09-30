//
//  MainCoordinator.swift
//  FlowController
//
//  Created by Trevor Beaton on 9/26/23.
//

import UIKit
/// MARK: A word from Caio:
/// A coordinator should not be responsible for creating it's children.
///
/// If it is, it would be coupled with all the dependencies of it's children as well.
///
/// This can over complicate the dependency injection part of our code.
///
/// We should offset the instantiation of the children into another class.
///
///
protocol Coordinator {
    func start()
}

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewControllerA = ViewControllerA()
        viewControllerA.coordinator = self
        navigationController.pushViewController(viewControllerA, animated: true)
    }
    
    func navigateToViewControllerB(with data: String) {
        let viewControllerB = ViewControllerB()
        viewControllerB.receivedData = data
        navigationController.pushViewController(viewControllerB, animated: true)
    }
    
    func navigateToViewControllerC() {
           let viewControllerC = ViewControllerC()
           navigationController.pushViewController(viewControllerC, animated: true)
       }
       
       func navigateToViewControllerD() {
           let viewControllerD = ViewControllerD()
           navigationController.pushViewController(viewControllerD, animated: true)
       }
       
       func navigateToViewControllerE() {
           let viewControllerE = ViewControllerE()
           navigationController.pushViewController(viewControllerE, animated: true)
       }
    
}

