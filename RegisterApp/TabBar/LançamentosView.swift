//
//  LançamentosView.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 09/05/22.
//

import Foundation
import UIKit

class LançamentosView: UIView {
    
    lazy var editionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .systemBlue
        label.font = UIFont.boldSystemFont(ofSize: 16.0)
        label.text = "Editar"
        return label
    }()
}
