//
//  RegisterCoordinator.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 20/04/22.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let viewController = RegisterViewController()
        
            viewController.onNextTap = {userVidewModel in
                self.nextView()
            }
            
            self.navigationController.pushViewController(viewController, animated: true)
        }
        
        private func nextView() {
            let coordinator = PersonalDataCoordinator(navigationController: self.navigationController)
            coordinator.start()
        }
    }


        
//        self.navigationController.pushViewController(viewController, animated: true)
//        viewController.onNextTap = {
//        //    print("Voltei")
//            let dados = PersonalDataVC()
//            self.navigationController.pushViewController(dados, animated: false)
//        }
//    }
//}
