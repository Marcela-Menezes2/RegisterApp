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


