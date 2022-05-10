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
//
//import UIKit
//
//class PersonalDataViewController: UIViewController {
//    //MARK: Closures
//    var onSaveProfile: ((_ personalDataViewModel: PersonalDataViewModel) -> Void)?
//
//    //MARK: Visual Elements
//    lazy var personalDataView: PersonalDataView = {
//        let view = PersonalDataView()
//        view.backgroundColor = .white
//
//        view.onSaveProfile = { personalDataViewModel in
//            self.onSaveProfile?(personalDataViewModel)
//        }
//
//        return view
//    }()
//
//    override func loadView() {
//        self.view = personalDataView
//    }
//}
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

