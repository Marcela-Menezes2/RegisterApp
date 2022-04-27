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
        self.backgroundColor = .textFieldBackgroundColor
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
    
    class CPFTextFieldDefault: UITextField {
        
        init(placeholder: String, keyboardType: UIKeyboardType = .default) {
            super.init(frame: .zero)
            initDefault(placeholder: placeholder, keyboardType: keyboardType)
        }
        
        init(placeholder: String, isSecureTextEntry: Bool) {
            super.init(frame: .zero)
            initDefault(placeholder: placeholder, keyboardType: .default)
            
            self.isSecureTextEntry = isSecureTextEntry
        }
        
        private func initDefault(placeholder: String, keyboardType: UIKeyboardType) {
            self.placeholder = placeholder
            self.translatesAutoresizingMaskIntoConstraints = false
            self.layer.borderColor = UIColor.textFieldBorderColor
            self.backgroundColor = .textFieldBackgroundColor
            self.textColor = .textFieldTextColor
            self.layer.cornerRadius = 10
            self.layer.borderWidth = 1
            self.keyboardType = keyboardType
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        // How to add padding to UITextField placeholder
        let padding = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 5)
        override open func textRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
        
        override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
        
        override open func editingRect(forBounds bounds: CGRect) -> CGRect {
            return bounds.inset(by: padding)
        }
    }


