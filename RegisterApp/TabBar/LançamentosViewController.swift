//
//  LançamentosViewController.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 09/05/22.
//

import Foundation
import UIKit

class LançamentosController: UIViewController{
    
    var lançamentosView = LançamentosView()
//    var tableView = ChamadasTableViewCell()
    
    override func loadView() {
        self.lançamentosView = LançamentosView()
        self.view = self.lançamentosView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
    }
}
