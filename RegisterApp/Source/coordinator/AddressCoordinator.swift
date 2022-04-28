//
//  RegisterPersonalDataCoordinator.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 20/04/22.
//
import Foundation
import UIKit

class AddressCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = AddressViewController()
        
            viewController.onNextTap = {
                self.nextView()
            }
            
            self.navigationController.pushViewController(viewController, animated: true)
        }
        
        private func nextView() {
            let coordinator = ReviewCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
    }
