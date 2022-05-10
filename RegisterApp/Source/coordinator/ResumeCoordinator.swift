//
//  ResumeCoordinator.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 29/04/22.
//

import UIKit

class ResumeCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    
    init(navigationController: UINavigationController, coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        let viewController = ResumeViewController()
        viewController.setProfileViewModel(coordinatorViewModel: self.coordinatorViewModel)
        
        viewController.onGoHome = {
            let coordinator = TabBarCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
            coordinator.start()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
}


//class ResumeCoordinator: Coordinator {
//    let navigationController: UINavigationController
//    let coordinatorViewModel: CoordinatorViewModel
//
//    init(navigationController: UINavigationController, coordinatorViewModel: CoordinatorViewModel) {
//        self.navigationController = navigationController
//        self.coordinatorViewModel = coordinatorViewModel
//    }
//
//    func start() {
//        let viewController = ResumeViewController()
//        viewController.setProfileViewModel(coordinatorViewModel: self.coordinatorViewModel)
//
//        viewController.onGoHome = {
//            let coo = TransactionCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
//            coo.start()
//        }
//
//        self.navigationController.pushViewController(viewController, animated: true)
//    }
//}
