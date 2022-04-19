//
//  DadosVC.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//

import Foundation
import UIKit

class DadosVC: UIViewController {
    
    var dadosScreen = DadosScreen()
    
    override func loadView() {
        self.dadosScreen = DadosScreen()
        self.view = self.dadosScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
}
