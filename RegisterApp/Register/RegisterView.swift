//
//  RegisterScreen.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 18/04/22.
//

import UIKit

class RegisterView: ViewDefault {
    
    // MARK: Closures
    var onNextTap: (() -> Void)?
    var onPasswordWrong: (()->Void)?
    
//    lazy var titleLabel = LabelDefault(titleLabel: "Register ")
    lazy var subTitleLabel = SubLabel(subLabel: "Login data ")
    lazy var usernameTextField = TextFieldDefault(placeholder: "  Username ")
    lazy var emailTextField = TextFieldDefault(placeholder: "  Email ")
    lazy var passwordTextField = TextFieldDefault(placeholder: "  Password ", isSecureTextEntry: true)
    lazy var nextButton: ButtonDefault = {
        let bt = ButtonDefault(setTitle: "Próximo")
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
        onNextTap?()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
