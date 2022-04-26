//
//  ViewController.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

import UIKit

class RegisterViewController: UIViewController {
    
    var onNextTap: (() -> Void)?
    
    lazy var registerView: RegisterView = {
        let view = RegisterView()
        
        
        view.onNextTap = {
            self.onNextTap?()
        }
        return view
    }()
    
    override func loadView() {
        self.view = self.registerView
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//    }
}

