//
//  DadosVC.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//


import Foundation
import UIKit

class PersonalDataViewController: UIViewController {
    //MARK: Closures
    var onSaveProfile: ((_ personalDataViewModel: PersonalDataViewModel) -> Void)?
    
    //MARK: Visual Elements
    lazy var personalDataView: PersonalDataView = {
        let view = PersonalDataView()
        view.backgroundColor = .white
        
        view.onSaveProfile = { personalDataViewModel in
            self.onSaveProfile?(personalDataViewModel)
        }
        
        return view
    }()
    
    override func loadView() {
        self.view = personalDataView
    }
}

//import Foundation
//import UIKit
//
//class PersonalDataViewController: ViewControllerDefault {
//
//    var onNextTap: (() -> Void)?
//
//    lazy var personalDataView: PersonalDataView = {
//        let view = PersonalDataView()
//
//        view.onNextTap = {
//            self.onNextTap?()
//        }
//        return view
//    }()
//
//    override func loadView() {
//        self.view = self.personalDataView
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.title = "Register"
//        self.navigationController?.navigationBar.backItem?.title = "Voltar"
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//    }

//import UIKit
//
//class RegisterViewController: UIViewController {
//    
//    var onNextTap: (() -> Void)?
//    
//    lazy var registerView: RegisterView = {
//        let view = RegisterView()
//        
//        
//        view.onNextTap = {
//            self.onNextTap?()
//        }
//        return view
//    }()
//    
//    override func loadView() {
//        self.view = self.registerView
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//    }
//}



//
//class RegisterViewController: UIViewController {
//
//    var onNextTap: (() -> Void)?
//
//    lazy var registerView: RegisterView = {
//        let view = RegisterView()
//
//
//        view.onNextTap = {
//            self.onNextTap?()
//        }
//        return view
//    }()
//
//    override func loadView() {
//        self.view = self.registerView
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        self.navigationController?.setNavigationBarHidden(true, animated: false)
//    }
//}
