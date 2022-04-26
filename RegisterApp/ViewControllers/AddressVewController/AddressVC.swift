//
//  AddressVC.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 23/04/22.
//

import UIKit

class AddressViewController: UIViewController {
    
    var onNextTap: (() -> Void)?
    
    lazy var addressView: AddressView = {
        let view = AddressView()
        
        
        view.onNextTap = {
            self.onNextTap?()
        }
        return view
    }()
    
    override func loadView() {
        self.view = self.addressView
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//    }
}

