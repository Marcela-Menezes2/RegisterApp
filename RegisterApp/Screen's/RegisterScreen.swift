//
//  RegisterScreen.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

import UIKit

class RegisterScreen: UIView {
    
    lazy var titleLabel = RegisterLabel(titleLabel: "Register ")
    lazy var subTitleLabel = SubLabel(subLabel: "Login data ")
    lazy var usernameTextField = TextFieldDefault(placeholder: "  Username ")
    lazy var emailTextField = TextFieldDefault(placeholder: "  Email ")
    lazy var passwordTextField = TextFieldDefault(placeholder: "  Password ", isSecureTextEntry: true)
    lazy var nextButton = NextButton(setTitle: "Next")
       
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        }
    
        func addSubView(){
        self.addSubview(titleLabel)
        self.addSubview(subTitleLabel)
        self.addSubview(usernameTextField)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(nextButton)
       
}
        
        private func setConstraints() {
    
            NSLayoutConstraint.activate([
    
    
                titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 81),
                titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
                
                subTitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 14),
                subTitleLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
    
               usernameTextField.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 50),
                usernameTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
                usernameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -35),
                usernameTextField.heightAnchor.constraint(equalToConstant: 52),
                
                emailTextField.topAnchor.constraint(equalTo: self.usernameTextField.bottomAnchor, constant: 30),
                emailTextField.leftAnchor.constraint(equalTo: self.usernameTextField.leftAnchor),
                emailTextField.trailingAnchor.constraint(equalTo: self.usernameTextField.trailingAnchor),
                emailTextField.heightAnchor.constraint(equalToConstant: 52),
                
                passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 30),
                passwordTextField.leftAnchor.constraint(equalTo: self.emailTextField.leftAnchor),
                passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
                passwordTextField.heightAnchor.constraint(equalToConstant: 52),
    
                nextButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
                nextButton.leftAnchor.constraint(equalTo: self.passwordTextField.leftAnchor),
                nextButton.trailingAnchor.constraint(equalTo: self.passwordTextField.trailingAnchor),
                nextButton.heightAnchor.constraint(equalToConstant: 46),
    
                
            ])
        }
    
  
    }
    
    

 
