//
//  PersonalDataCoordinator.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 26/04/22.
//

import Foundation
import UIKit

class PersonalDataCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = PersonalDataVC()
        
            viewController.onNextTap = {
                self.nextView()
            }
            
            self.navigationController.pushViewController(viewController, animated: true)
        }
        
        private func nextView() {
            let coordinator = AddressCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
}