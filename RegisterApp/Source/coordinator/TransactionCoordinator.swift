//
//  HomeCoordinator.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 06/05/22.
//

import UIKit

class TransactionCoordinator: Coordinator {
    let navigationController: UINavigationController
    let coordinatorViewModel: CoordinatorViewModel
    let transactionViewController: TransactionViewController = {
        let view = TransactionViewController()
        view.tabBarItem.image = UIImage(named: "TransactionIcon")
        view.tabBarItem.title = "Lançamentos"
        
        return view
    }()
    
    init(navigationController: UINavigationController,
         coordinatorViewModel: CoordinatorViewModel) {
        self.navigationController = navigationController
        self.coordinatorViewModel = coordinatorViewModel
    }
    
    func start() {
        //self.navigationController.pushViewController(viewController, animated: true)
    }
}

