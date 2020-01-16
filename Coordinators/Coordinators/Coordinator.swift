//
//  Coordinator.swift
//  Coordinators
//
//  Created by Mariaelena Silveira on 16/01/20.
//  Copyright © 2020 Mariaelena Silveira. All rights reserved.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
