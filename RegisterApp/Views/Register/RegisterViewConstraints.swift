//
//  RegisterViewConstraints.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 20/04/22.
//

import UIKit

extension RegisterView {
    func setUIElements() {
        setSubTitle()
        setUsername()
        setEmail()
        setPassword()
        setNextButton()
    }
    
    private func setSubTitle() {
        self.addSubview(subTitleLabel)
        
        NSLayoutConstraint.activate([
            
            subTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 140),
            subTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15),
        ])
    }
    
    private func setUsername() {
        self.addSubview(usernameTextField)
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 40),
            usernameTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
            usernameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
            usernameTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setEmail() {
        self.addSubview(emailTextField)
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: self.usernameTextField.bottomAnchor, constant: 40),
            emailTextField.leftAnchor.constraint(equalTo: self.usernameTextField.leftAnchor),
            emailTextField.trailingAnchor.constraint(equalTo: self.usernameTextField.trailingAnchor),
            emailTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setPassword() {
        self.addSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 40),
            passwordTextField.leftAnchor.constraint(equalTo: self.emailTextField.leftAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
    
    private func setNextButton() {
        self.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            nextButton.leftAnchor.constraint(equalTo: self.passwordTextField.leftAnchor),
            nextButton.trailingAnchor.constraint(equalTo: self.passwordTextField.trailingAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: 36),
        ])
    }
}
