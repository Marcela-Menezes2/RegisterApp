//
//  HomeViewController.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 06/05/22.
//

import Foundation

class TransactionViewController: ViewControllerDefault {
    // MARK: - Closures
    
    // MARK: - Properties
    
    lazy var transactionView: TransactionView = {
        let view = TransactionView()
        view.backgroundColor = .viewBackgroundColor
        
        return view
    }()
    
    // MARK: Lifecyclie
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = transactionView
    }
}

