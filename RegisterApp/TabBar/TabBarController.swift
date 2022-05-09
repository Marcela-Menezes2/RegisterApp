//
//  TabBarController.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 09/05/22.
//

import UIKit

class TabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBarController()
    }
    
    private func setupTabBarController() {
        
        let lançamentos = UINavigationController(rootViewController: LançamentosController())
        let categorias = UINavigationController(rootViewController: CategoriasController())
        self.setViewControllers([lançamentos, categorias], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
                                 
        guard let itens = tabBar.items else{return}
                                 
        itens[0].title = "Lançamentos"
        itens[0].image = UIImage(systemName: "banknote.fill")
                                 
        itens[1].title = "Categorias"
        itens[1].image = UIImage(systemName: "list.triangle")
    

    }
}
//
//        class Lançamentos: UIViewController {
//
//            override func viewDidLoad() {
//                super.viewDidLoad()
//                view.backgroundColor = .systemGreen
//                self.title = "Lançamentos"
//            }
//
//
//        }
//
//    class Categorias: UIViewController {
//
//            override func viewDidLoad() {
//                super.viewDidLoad()
//                view.backgroundColor = .systemGreen
//                self.title = "Categorias"
//            }
//
//
//        }
