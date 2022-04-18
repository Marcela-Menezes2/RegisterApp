//
//  RegisterScreen.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

import UIKit

class RegisterScreen: UIView {
    
        lazy var titleLabel: UILabel = {
           let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 40)
            label.text = "Register"
            return label
        }()
    
        lazy var subtitleLabel: UILabel = {
           let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = .white
            label.font = UIFont.systemFont(ofSize: 20)
            label.text = "Dados de Login"
            return label
        }()
    
        lazy var nomeTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = " Username "
            textField.layer.cornerRadius = 7.5
            textField.borderStyle = .roundedRect
            textField.autocorrectionType = .no
            textField.backgroundColor = .white
            textField.layer.borderColor = UIColor.white.cgColor
            textField.layer.borderWidth = 1
            textField.textColor = .darkGray
            return textField
        }()
    
    
        lazy var emailTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.autocorrectionType = .no
            textField.backgroundColor = .white
            textField.borderStyle = .roundedRect
            textField.keyboardType = .emailAddress
            textField.layer.cornerRadius = 7.5
            textField.placeholder = " Email "
            textField.layer.borderWidth = 1
            textField.textColor = .darkGray
            return textField
        }()
    
        lazy var passwordTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.autocorrectionType = .no
            textField.backgroundColor = .white
            textField.borderStyle = .roundedRect
            textField.keyboardType = .default
            textField.isSecureTextEntry = true
            textField.layer.cornerRadius = 7.5
            textField.placeholder = " Password "
            textField.layer.borderWidth = 1
            textField.textColor = .darkGray
            return textField
        }()
    
        lazy var  nextButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle(" Next ", for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 18)
            button.setTitleColor(.white, for: UIControl.State.normal)
            button.clipsToBounds = true
            button.layer.cornerRadius = 7.5
            button.backgroundColor = .systemGreen
       //     button.addTarget(self, action: #selector(self.tappedLoginButton), for: .touchUpInside)
            return button
        }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        self.addSubview(titleLabel)
        self.addSubview(subtitleLabel)
        self.addSubview(nomeTextField)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(nextButton)
       
               setConstraints()
       
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

    
        private func setConstraints() {
    
            NSLayoutConstraint.activate([
    
    
                titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
                titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
                
                subtitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20),
                subtitleLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor),
    
                nomeTextField.topAnchor.constraint(equalTo: self.subtitleLabel.bottomAnchor, constant: 50),
                nomeTextField.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
                nomeTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
                nomeTextField.heightAnchor.constraint(equalToConstant: 45),
                
                emailTextField.topAnchor.constraint(equalTo: self.nomeTextField.bottomAnchor, constant: 30),
                emailTextField.leftAnchor.constraint(equalTo: self.nomeTextField.leftAnchor),
                emailTextField.trailingAnchor.constraint(equalTo: self.nomeTextField.trailingAnchor),
                emailTextField.heightAnchor.constraint(equalToConstant: 45),
                
                passwordTextField.topAnchor.constraint(equalTo: self.emailTextField.bottomAnchor, constant: 30),
                passwordTextField.leftAnchor.constraint(equalTo: self.emailTextField.leftAnchor),
                passwordTextField.trailingAnchor.constraint(equalTo: self.emailTextField.trailingAnchor),
                passwordTextField.heightAnchor.constraint(equalToConstant: 45),
    
                nextButton.topAnchor.constraint(equalTo: self.passwordTextField.bottomAnchor, constant: 300),
                nextButton.leftAnchor.constraint(equalTo: self.passwordTextField.leftAnchor),
                nextButton.trailingAnchor.constraint(equalTo: self.passwordTextField.trailingAnchor),
                nextButton.heightAnchor.constraint(equalToConstant: 45),
            //    nextButton.widthAnchor.constraint(equalToConstant: 450)
    
                
            ])
        }
    }


  
