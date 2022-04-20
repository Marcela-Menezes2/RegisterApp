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
        
        self.navigationController.pushViewController(viewController, animated: true)
        viewController.onNextTap = {
            print("Voltei")
            let dados = DadosVC()
            self.navigationController.pushViewController(dados, animated: false)
        }
    }
}
