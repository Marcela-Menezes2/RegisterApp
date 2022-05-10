//
//  RegisterPersonalDataCoordinator.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 20/04/22.
//

import UIKit

class AddressCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    
    init(navigationController: UINavigationController,
         coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        let viewController = AddressViewController()
        viewController.onSaveTap = { addressViewModel in
            self.coordinatorViewModel.addressViewModel = addressViewModel
            self.startResumeViewController()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func startResumeViewController() {
        let coordinator = ResumeCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        
        coordinator.start()
    }
}

//import Foundation
//import UIKit
//
//class AddressCoordinator: Coordinator {
//    var navigationController: UINavigationController
//
//    init (navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//
//    func start() {
//        let viewController = AddressViewController()
//
//            viewController.onNextTap = {
//                self.nextView()
//            }
//
//            self.navigationController.pushViewController(viewController, animated: true)
//        }
//
//        private func nextView() {
//            let coordinator = ResumeCoordinator(navigationController: self.navigationController)
//            coordinator.start()
//        }
//    }
