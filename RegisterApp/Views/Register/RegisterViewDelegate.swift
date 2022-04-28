//
//  RegisterViewDelegate.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 26/04/22.
//

import UIKit

extension RegisterView:  UITextFieldDelegate {
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField == passwordTextField {
            let t = RegExp.checkPasswordComplexity(password: textField.text!, length: 6, patternsToEscape:[], caseSensitivty: true, numericDigits: true, specialCharacter: true)
            
            if t {
                textField.layer.borderColor = UIColor.textFieldBorderColor
            } else {
                textField.layer.borderColor = UIColor.red.cgColor
            }
        }
    }
    
    func setupTextFields() {
        self.passwordTextField.delegate = self
        self.passwordTextField.keyboardType = .default
        self.emailTextField.keyboardType = .emailAddress
    }
}
