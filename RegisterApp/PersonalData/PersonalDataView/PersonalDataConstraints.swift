//
//  PersonalDataConstraints.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 23/04/22.
//

import Foundation
import UIKit

extension PersonalDataView {
    func setUIElements() {
//        setTitle()
        setSubTitle()
        setIdadeLabel()
        setIdadeButton()
        setDadosLabel()
        setGenderTextField()
        setCpfLabel()
        setCpfTextField()
        setTelefoneLabel()
        setTelefoneTextField()
//        setLogoImage()
        setNextButton()
    }
    
    private func setSubTitle() {
        self.addSubview(subTitleLabel)
        NSLayoutConstraint.activate([
            subTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 160),
            subTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15)
        ])
    }
    
    private func setIdadeLabel() {
        self.addSubview(idadeLabel)
        NSLayoutConstraint.activate([
            idadeLabel.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 45),
            idadeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10)
        ])
    }
    
    private func setIdadeButton() {
        self.addSubview(ageTextField)
        NSLayoutConstraint.activate([
            ageTextField.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 35),
            ageTextField.leftAnchor.constraint(equalTo: self.idadeLabel.leftAnchor, constant: 60),
            ageTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
            ageTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
    }
    
    private func setDadosLabel() {
        self.addSubview(dadosLabel)
        NSLayoutConstraint.activate([
            dadosLabel.topAnchor.constraint(equalTo: self.idadeLabel.bottomAnchor, constant: 60),
            dadosLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10)
        ])
    }
    
    private func setGenderTextField() {
        self.addSubview(genderTextField)
        NSLayoutConstraint.activate([
            genderTextField.topAnchor.constraint(equalTo: self.ageTextField.bottomAnchor, constant: 35),
            genderTextField.leftAnchor.constraint(equalTo: self.dadosLabel.leftAnchor, constant: 70),
            genderTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            genderTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
    }
    
    private func setCpfLabel() {
        self.addSubview(cpfLabel)
        NSLayoutConstraint.activate([
            cpfLabel.topAnchor.constraint(equalTo: self.dadosLabel.bottomAnchor, constant: 60),
            cpfLabel.leftAnchor.constraint(equalTo: self.dadosLabel.leftAnchor)
        ])
    }
    
    private func setCpfTextField() {
        self.addSubview(cpfTextField)
        NSLayoutConstraint.activate([
            cpfTextField.topAnchor.constraint(equalTo: self.genderTextField.topAnchor, constant: 80),
            cpfTextField.leftAnchor.constraint(equalTo: self.cpfLabel.leftAnchor, constant: 60),
            cpfTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            cpfTextField.heightAnchor.constraint(equalToConstant: 42)
        ])
    }
    
    private func setTelefoneLabel() {
        self.addSubview(telefoneLabel)
        NSLayoutConstraint.activate([
            telefoneLabel.topAnchor.constraint(equalTo: self.cpfLabel.bottomAnchor, constant: 60),
            telefoneLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10)
        ])
    }
    
    private func setTelefoneTextField() {
        self.addSubview(telefoneTextField)
        NSLayoutConstraint.activate([
            telefoneTextField.topAnchor.constraint(equalTo: self.cpfTextField.bottomAnchor, constant: 40),
            telefoneTextField.leftAnchor.constraint(equalTo: self.telefoneLabel.leftAnchor, constant: 60),
            telefoneTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            telefoneTextField.heightAnchor.constraint(equalToConstant: 42)
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
    
//    private func setLogoImage() {
//        self.addSubview(logoImage)
//        NSLayoutConstraint.activate([
//            logoImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
//            logoImage.leftAnchor.constraint(equalTo: self.leftAnchor),
//            logoImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            logoImage.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -2),
//        ])
//}

}
