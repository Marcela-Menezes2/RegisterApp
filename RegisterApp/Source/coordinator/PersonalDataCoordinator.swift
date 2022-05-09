//
//  PersonalDataCoordinator.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 26/04/22.
//
import Foundation
import UIKit


class PersonalDataCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    
    init(navigationController: UINavigationController, coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        let viewController = PersonalDataViewController()
        
        viewController.onSaveProfile = { personalDataViewModel in
            self.coordinatorViewModel.personalDataViewModel = personalDataViewModel
            self.startAddressCoordinator()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func startAddressCoordinator() {
        let coordinator = AddressCoordinator(navigationController: self.navigationController, coordinatorViewModel: self.coordinatorViewModel)
        
        coordinator.start()
    }
}

//import Foundation
//import UIKit
//
//class PersonalDataCoordinator: Coordinator {
//    var navigationController: UINavigationController
//
//    init (navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//
//    func start() {
//        let viewController = PersonalDataVC()
//
//            viewController.onNextTap = {
//                self.nextView()
//            }
//
//            self.navigationController.pushViewController(viewController, animated: true)
//        }
//
//        private func nextView() {
//            let coordinator = AddressCoordinator(navigationController: self.navigationController)
//            coordinator.start()
//        }
//}
