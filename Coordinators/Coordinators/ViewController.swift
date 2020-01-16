//
//  ViewController.swift
//  Coordinators
//
//  Created by Mariaelena Silveira on 16/01/20.
//  Copyright © 2020 Mariaelena Silveira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
           super.viewDidLoad()
        print(self.coordinator)
           // Do any additional setup after loading the view.
        
    }
    
    func setCoordinator(coordinator: MainCoordinator){
        self.coordinator = coordinator
    }
    
    @IBAction func buyTapped(_ sender: Any) {
        self.coordinator?.buySubscription()
    }
    
    @IBAction func createTapped(_ sender: Any) {
        self.coordinator?.create()
    }
    
}

