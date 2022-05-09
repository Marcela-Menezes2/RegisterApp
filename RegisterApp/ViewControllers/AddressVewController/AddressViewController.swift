//
//  AddressVC.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 23/04/22.
//

import Foundation


class AddressViewController: ViewControllerDefault {
    //MARK: Closures
    var onSave:((_ addressViewModel: AddressViewModel) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onSave?(AddressViewModel())
    }
}

//import UIKit
//
//class AddressViewController: ViewControllerDefault {
//
//  //  var onNextTap: (() -> Void)?
//    var onNextTap: (() -> Void)?
//
//    lazy var addressView: AddressView = {
//        let view = AddressView()
//
//
//        view.onNextTap = {
//            self.onNextTap?()
//
////            view.onNextTap = {userViewModel in
////            self.onNextTap?(userViewModel)
//        }
//
//      return view
//    }()
//
//    override func loadView() {
//        self.view = self.addressView
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.title = "Register"
//    }
////    override func viewDidAppear(_ animated: Bool) {
////        self.navigationController?.setNavigationBarHidden(true, animated: false)
////    }
//}
//

