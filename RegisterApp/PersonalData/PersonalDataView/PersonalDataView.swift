//
//  DadosScreen.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//

import UIKit

class DadosScreen: UIView {
    
    lazy var  loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.text = "Login"
        return label
    }()
    
    func addSubView(){
        self.addSubview(loginLabel)
        setUpConstraints()

    }
    
    private func setUpConstraints(){
        
        NSLayoutConstraint.activate([
            self.loginLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 20),
            self.loginLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
        ])
    }
}


import SwiftUI
import UIViewCanvas

struct MyPreview: PreviewProvider {
    static var previews: some View {
        ViewCanvas(for: DadosScreen())
    }
}
