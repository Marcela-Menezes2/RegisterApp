//
//  Textfield's.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

import UIKit

class TextFieldDefault: UITextField {
    
    init(placeholder: String) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder)
    }
    
    init(placeholder: String, isSecureTextEntry: Bool) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder)
        
        self.isSecureTextEntry = isSecureTextEntry
    }
    
    private func initDefault(placeholder: String) {
        self.placeholder = placeholder
        self.translatesAutoresizingMaskIntoConstraints = false
        self.keyboardType = UIKeyboardType.emailAddress
        self.backgroundColor = .gray
        self.layer.cornerRadius = 10
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1
        setUpConstraints()
    }
    
    func setUpConstraints() {
        self.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
