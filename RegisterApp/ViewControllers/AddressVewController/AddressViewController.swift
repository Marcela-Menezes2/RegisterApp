//
//  AddressVC.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 23/04/22.
//

import Foundation
import UIKit


class AddressViewController: UIViewController {
    //MARK: Closures
    var onSaveTap: ((_ addressViewModel: AddressViewModel) -> Void)?
    
    //MARK: Visual Elements
    lazy var addressView: AddressView = {
        let view = AddressView()
        view.backgroundColor = .white
        
        view.onSaveTap = { addressViewModel in
            self.onSaveTap?(addressViewModel)
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = addressView
    }
}
