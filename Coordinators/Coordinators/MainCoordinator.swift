//
//  MainCoordinator.swift
//  Coordinators
//
//  Created by Mariaelena Silveira on 16/01/20.
//  Copyright © 2020 Mariaelena Silveira. All rights reserved.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    private let window: UIWindow
    
    init(navigationController: UINavigationController, window: UIWindow) {
        self.navigationController = navigationController
        self.window = window
    }
    
    func start() {
        
        let vc = ViewController.instantiate()
        vc.setCoordinator(coordinator: self)
//        vc.coordinator = self
        
        self.navigationController.pushViewController(vc, animated: false)
    }
    
//    private func showMain() {
//        let vc = ViewController.instantiate()
//        vc.coordinator = self
//        self.navigationController.pushViewController(vc, animated: false)
//    }
    
    func buySubscription() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func create() {
        let vc = CreateViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
}
