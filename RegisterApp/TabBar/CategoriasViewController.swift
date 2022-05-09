//
//  CategoriasViewController.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 09/05/22.
//

import Foundation
import UIKit

class CategoriasController: UIViewController{
    
    var categoriasView = CategoriasView()
//    var tableView = ChamadasTableViewCell()
//
    override func loadView() {
        self.categoriasView = CategoriasView()
        self.view = self.categoriasView

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
    }
}
