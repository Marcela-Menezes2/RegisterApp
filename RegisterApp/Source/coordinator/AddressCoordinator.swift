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
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = PersonalDataVC()
        
        self.navigationController.pushViewController(viewController, animated: true)
        viewController.onNextTap = {
            print("Voltei")
            let detalhes = AddressViewController()
            self.navigationController.pushViewController(detalhes, animated: false)
        }
    }
}
 
