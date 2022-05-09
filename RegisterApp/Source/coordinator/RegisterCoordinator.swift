//
//  RegisterCoordinator.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 20/04/22.
//
//import Foundation
//import UIKit
//
//class RegisterCoordinator: Coordinator {
//    var navigationController: UINavigationController
//    let viewController = RegisterViewController()
//
//    init (navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//
//    func start() {
//        let accessToken = getTokenFromKeyChain()
//
//        if !accessToken.isEmpty {
//            startLoginCoordinator()
//        } else {
//            startRegisterViewController()
//        }
//    }
//
//    private func getTokenFromKeyChain() -> String {
//        let dataEmail = KeychainHelper.standard.read(service: "br.com.mobilesapp.MeusGastos", account: "email")
//        guard let dataEmail = dataEmail else {
//            startRegisterViewController()
//            return String.empty
//        }
//
//        let email = String(data: dataEmail, encoding: .utf8)!
//
//        let data = KeychainHelper.standard.read(service: "br.com.mobilesapp.MeusGastos", account: email)
//
//        guard let data = data else {
//            startRegisterViewController()
//            return String.empty
//        }
//
//        return String(data: data, encoding: .utf8) ?? String.empty
//    }
//
//    func startRegister() {
//        startRegisterViewController()
//    }
//
//    private func startLoginCoordinator() {
//        let coordinator = LoginCoordinator(navigationController: self.navigationController)
//        coordinator.start()
//    }
//
//    private func startRegisterViewController() {
//        viewController.onLoginTap = {
//            self.startLoginCoordinator()
//        }
//
//        viewController.onRegisterTap = { userVidewModel in
//            self.saveKeyChain(viewModel: userVidewModel)
//
////            userVidewModel.send { result in
////                switch result {
////                case .success(_):
////                    DispatchQueue.main.async {
////                        print("Sucesso ao enviar o usuário")
////                        self.saveKeyChain(viewModel: userVidewModel)
////                    }
////                case .failure(_):
////                    DispatchQueue.main.async {
////                        self.erroRegister()
////                    }
////                }
////            }
//        }
//
//        self.navigationController.pushViewController(viewController, animated: true)
//    }
//
//    private func nextView() {
//        let coordinator = PersonalDataCoordinator(navigationController: self.navigationController)
//        coordinator.start()
//    }
//
//    private func erroRegister() {
//        self.viewController.presentAlert(withTitle: "Erro", message: "Não foi possível salvar o usuário!")
//    }
//
//    private func saveKeyChain(viewModel: UserViewModel) {
//        let accessToken = viewModel.password
//        let data = Data(accessToken.utf8)
//        let result = KeychainHelper.standard.save(data, service: "br.com.mobilesapp.MeusGastos", account: viewModel.email)
//
//        if result {
//            self.startResume()
//        } else {
//            self.navigationController.presentAlert(withTitle: "Error", message: "Erro ao gravar o usuário! Repita a operação.")
//        }
//    }
//
//    func startResume() {
//        let coordinator = ResumeCoordinator(navigationController: self.navigationController)
//        coordinator.start()
//    }
//}


import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    var navigationController: UINavigationController
    
    init (navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        
        viewController.onLoginTap = {
            self.startLoginCoordinator()
        }
        
        viewController.onRegisterTap = { userVidewModel in
            self.saveKeyChain(viewModel: userVidewModel)
        }
        
        DispatchQueue.main.async {
            self.navigationController.pushViewController(viewController, animated: true)
        }
    }
    
    private func startLoginCoordinator() {
        let coordinator = LoginCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
    
    private func goProfile(userVidewModel: UserViewModel) {
        let viewModel = CoordinatorViewModel()
        viewModel.userViewModel = userVidewModel
        
        let coordinator = PersonalDataCoordinator(navigationController: self.navigationController, coordinatorViewModel: viewModel)
        coordinator.start()
    }
    
    private func erroRegister() {
        self.navigationController.presentAlert(withTitle: "Erro", message: "Não foi possível salvar o usuário!")
    }
    
    private func saveKeyChain(viewModel: UserViewModel) {
        let accessToken = viewModel.password
        let data = Data(accessToken.utf8)
        let result = KeychainHelper.standard.save(data, service: "br.com.mobilesapp.MeusGastos", account: viewModel.email)
        
        if result {
            self.goProfile(userVidewModel: viewModel)
        } else {
            self.navigationController.presentAlert(withTitle: "Error", message: "Erro ao gravar o usuário! Repita a operação.")
        }
    }
}


//class RegisterCoordinator: Coordinator {
//    var navigationController: UINavigationController
//
//    init (navigationController: UINavigationController) {
//        self.navigationController = navigationController
//    }
//
//    func start() {
//        let viewController = RegisterViewController()
//
//            viewController.onNextTap = {userVidewModel in
//                self.nextView()
//            }
//
//            self.navigationController.pushViewController(viewController, animated: true)
//        }
//
//        private func nextView() {
//            let coordinator = PersonalDataCoordinator(navigationController: self.navigationController)
//            coordinator.start()
//        }
//    }


        
//        self.navigationController.pushViewController(viewController, animated: true)
//        viewController.onNextTap = {
//        //    print("Voltei")
//            let dados = PersonalDataVC()
//            self.navigationController.pushViewController(dados, animated: false)
//        }
//    
