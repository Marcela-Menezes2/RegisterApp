//
//  AddressConstraints.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

extension AddressView {
    func setUIElements() {
   //     setTitle()
        setSubTitle()
        setIdadeLabel()
        setRuaTextField()
        setNumeroLabel()
        setNumeroTextField()
        setBairroLabel()
        setBairroTextField()
        setCepLabel()
        setCepTextField()
        setCidadeLabel()
        setCidadeTextField()
        setEstadoLabel()
        setEstadoButton()
        setNextButton()
    }
    
//    private func setTitle() {
//        self.addSubview(titleLabel)
//
//        NSLayoutConstraint.activate([
//            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
//            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20)
//        ])
//    }
    
    private func setSubTitle() {
        self.addSubview(subTitleLabel)
        
        NSLayoutConstraint.activate([
            subTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 160),
            subTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15)
//            subTitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 14),
//            subTitleLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor)
        ])
}
    
    private func setIdadeLabel() {
        self.addSubview(idadeLabel)
        
        NSLayoutConstraint.activate([
        idadeLabel.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 45),
        idadeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10)
        ])
}
    
    private func setRuaTextField() {
        self.addSubview(ruaTextField)
        
        NSLayoutConstraint.activate([
            ruaTextField.topAnchor.constraint(equalTo: self.idadeLabel.topAnchor, constant:  -15),
            ruaTextField.leftAnchor.constraint(equalTo: self.idadeLabel.leftAnchor, constant: 50),
            ruaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            ruaTextField.heightAnchor.constraint(equalToConstant: 42),
            
        ])
}
    
    private func setNumeroLabel() {
        self.addSubview(numeroLabel)
        
        NSLayoutConstraint.activate([
            numeroLabel.topAnchor.constraint(equalTo: self.idadeLabel.bottomAnchor, constant: 50),
            numeroLabel.leftAnchor.constraint(equalTo: self.idadeLabel.leftAnchor),
        ])
}

    private func setNumeroTextField() {
        self.addSubview(numeroTextField)
        
        NSLayoutConstraint.activate([
            numeroTextField.topAnchor.constraint(equalTo: self.numeroLabel.topAnchor, constant:  -10),
            numeroTextField.leftAnchor.constraint(equalTo: self.numeroLabel.leftAnchor, constant: 80),
            numeroTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            numeroTextField.heightAnchor.constraint(equalToConstant: 42),
            
        ])
}

    private func setBairroLabel() {
        self.addSubview(bairroLabel)
        
        NSLayoutConstraint.activate([
            bairroLabel.topAnchor.constraint(equalTo: self.numeroLabel.bottomAnchor, constant: 60),
            bairroLabel.leftAnchor.constraint(equalTo: self.numeroLabel.leftAnchor),
            
        ])
}

    private func setBairroTextField() {
        self.addSubview(bairroTextField)
        
        NSLayoutConstraint.activate([
            bairroTextField.topAnchor.constraint(equalTo: self.bairroLabel.topAnchor, constant:  -10),
            bairroTextField.leftAnchor.constraint(equalTo: self.bairroLabel.leftAnchor, constant: 60),
            bairroTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            bairroTextField.heightAnchor.constraint(equalToConstant: 42),
            
        ])
}

    private func setCepLabel() {
        self.addSubview(cepLabel)
        
        NSLayoutConstraint.activate([
            cepLabel.topAnchor.constraint(equalTo: self.bairroLabel.bottomAnchor, constant: 60),
            cepLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),

            
        ])
}
    
    
    private func setCepTextField() {
        self.addSubview(cepTextField)
        
        NSLayoutConstraint.activate([
            cepTextField.topAnchor.constraint(equalTo: self.cepLabel.topAnchor, constant:  -10),
            cepTextField.leftAnchor.constraint(equalTo: self.cepLabel.leftAnchor, constant: 50),
            cepTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            cepTextField.heightAnchor.constraint(equalToConstant: 42),
            
        ])
}


    private func setCidadeLabel() {
        self.addSubview(cidadeLabel)
        
        NSLayoutConstraint.activate([
            cidadeLabel.topAnchor.constraint(equalTo: self.cepLabel.bottomAnchor, constant: 60),
            cidadeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),

        ])
}

    private func setCidadeTextField() {
        self.addSubview(cidadeTextField)
        
        NSLayoutConstraint.activate([
            cidadeTextField.topAnchor.constraint(equalTo: self.cidadeLabel.topAnchor, constant:  -10),
            cidadeTextField.leftAnchor.constraint(equalTo: self.cidadeLabel.leftAnchor, constant: 70),
            cidadeTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            cidadeTextField.heightAnchor.constraint(equalToConstant: 42),
        ])
}

    
    private func setEstadoLabel() {
        self.addSubview(estadoLabel)
        
        NSLayoutConstraint.activate([
            estadoLabel.topAnchor.constraint(equalTo: self.cidadeLabel.bottomAnchor, constant: 60),
            estadoLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
        ])
}
    
    private func setEstadoButton() {
        self.addSubview(stateButton)
        
        NSLayoutConstraint.activate([
            stateButton.topAnchor.constraint(equalTo: self.cidadeTextField.bottomAnchor, constant: 40),
            stateButton.leftAnchor.constraint(equalTo: self.estadoLabel.leftAnchor, constant: 70),
            stateButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
            stateButton.heightAnchor.constraint(equalToConstant: 42),

            ])
    }
    
    private func setNextButton() {
        self.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            nextButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
            nextButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35),
            nextButton.heightAnchor.constraint(equalToConstant: 46),
            ])
    }
}
