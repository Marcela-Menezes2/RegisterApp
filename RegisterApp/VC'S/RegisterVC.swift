//
//  ViewController.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

import UIKit

class RegisterVC: UIViewController {
    
    var registerScreen = RegisterScreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.registerScreen = RegisterScreen()
        self.view = self.registerScreen
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

}

