//
//  RegisterScreen.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

import UIKit

class RegisterView: ViewDefault {
    
    // MARK: Closures
    var onRegisterTap: ((_ userVideModel: UserViewModel) -> Void)?
    var onLoginTap: (() -> Void)?
    //    var onNextTap: ((_ userViewModel: UserViewModel) -> Void)?
    var onPasswordWrong: (()->Void)?
    
    lazy var subTitleLabel = SubLabel(subLabel: "Login data ")
    lazy var usernameTextField = TextFieldDefault(placeholder: "  Username ")
    lazy var emailTextField = TextFieldDefault(placeholder: "  Email ")
    lazy var passwordTextField = TextFieldDefault(placeholder: "  Password ", isSecureTextEntry: true)
    lazy var nextButton: ButtonDefault = {
        let bt = ButtonDefault(title: "Salvar")
        bt.backgroundColor = .buttonBackgroundColor
        bt.addTarget(self, action: #selector(nextButtonTap), for: .touchUpInside)
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        self.setUIElements()
        self.setupTextFields()
    }
    
    
    @objc private func nextButtonTap() {
        //        onNextTap?()
        let userViewModel = UserViewModel(model: UserModel(id: 0, email: emailTextField.text ?? String.empty, password: passwordTextField.text ?? String.empty))
        
        onRegisterTap?(userViewModel)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
