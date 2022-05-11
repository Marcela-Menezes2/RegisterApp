//
//  ReviewDataView.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

class ResumeView: ViewDefault {
    //MARK: Closures
    var onGoHome: (() -> Void )?
    
    //MARK: Variables
    let coordinatorViewModel: CoordinatorViewModel
    
    //MARK: Elements View
    var labelAge = userLabel(idadeLabel: String.empty)
    var labelGender = userLabel(idadeLabel: String.empty)
    var labelCPF = userLabel(idadeLabel: String.empty)
    var labelPhone = userLabel(idadeLabel: String.empty)
    var labelCEP = userLabel(idadeLabel: String.empty)
    var labelStreet = userLabel(idadeLabel: String.empty)
    var labelNumber = userLabel(idadeLabel: String.empty)
    var labelDistrict = userLabel(idadeLabel: String.empty)
    var labelCity = userLabel(idadeLabel: String.empty)
    var labelUF = userLabel(idadeLabel: String.empty)
    
    var buttonHome = ButtonDefault(setTitle: "Home")
    
    init(withCoordinatorViewModel coordinatorViewModel: CoordinatorViewModel) {
        self.coordinatorViewModel = coordinatorViewModel
        
        super.init(frame: .zero)
        
        self.setElementsView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setElementsView() {
        setValuesInElementsViews()
        
        setLabelAge()
        setLabelGender()
        setLabelCPF()
        setLabelPhone()
        setLabelCep()
        setLabelStreet()
        setLabelNumber()
        setLabelDistrict()
        setLabelCity()
        setLabelUF()
        setButtonHome()
    }
    
    private func setValuesInElementsViews() {
        labelAge.text = "Sua Faixa etária: \(self.coordinatorViewModel.personalDataViewModel?.age ?? String.empty)"
        labelGender.text = "Seu Gênero: \(self.coordinatorViewModel.personalDataViewModel?.gender ?? String.empty)"
        labelCPF.text = "Seu CPF: \(self.coordinatorViewModel.personalDataViewModel?.cpf ?? String.empty)"
        labelPhone.text = "Seu Telefone: \(self.coordinatorViewModel.personalDataViewModel?.phone ?? String.empty)"
        labelCEP.text = "Seu CEP: \(self.coordinatorViewModel.addressViewModel?.cep ?? String.empty)"
        labelStreet.text = "Sua Rua: \(self.coordinatorViewModel.addressViewModel?.street ?? String.empty)"
        labelNumber.text = "Seu Número: \(self.coordinatorViewModel.addressViewModel?.number ?? String.empty)"
        labelDistrict.text = "Seu Bairro: \(self.coordinatorViewModel.addressViewModel?.district ?? String.empty)"
        labelCity.text = "Sua Cidade: \(self.coordinatorViewModel.addressViewModel?.city ?? String.empty)"
        labelUF.text = "Seu Estado: \(self.coordinatorViewModel.addressViewModel?.uf ?? String.empty)"
    }
    
    private func setLabelAge() {
        self.addSubview(labelAge)
        
        NSLayoutConstraint.activate([
            labelAge.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            labelAge.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelAge.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setLabelGender() {
        self.addSubview(labelGender)
        
        NSLayoutConstraint.activate([
            labelGender.topAnchor.constraint(equalTo: self.labelAge.bottomAnchor, constant: 10),
            labelGender.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelGender.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setLabelCPF() {
        self.addSubview(labelCPF)
        
        NSLayoutConstraint.activate([
            labelCPF.topAnchor.constraint(equalTo: self.labelGender.bottomAnchor, constant: 10),
            labelCPF.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelCPF.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    private func setLabelPhone() {
        self.addSubview(labelPhone)
        
        NSLayoutConstraint.activate([
            labelPhone.topAnchor.constraint(equalTo: self.labelCPF.bottomAnchor, constant: 10),
            labelPhone.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelPhone.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setLabelCep() {
        self.addSubview(labelCEP)
        
        NSLayoutConstraint.activate([
            labelCEP.topAnchor.constraint(equalTo: self.labelPhone.bottomAnchor, constant: 10),
            labelCEP.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelCEP.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setLabelStreet() {
        self.addSubview(labelStreet)
        
        NSLayoutConstraint.activate([
            labelStreet.topAnchor.constraint(equalTo: self.labelCEP.bottomAnchor, constant: 10),
            labelStreet.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelStreet.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setLabelNumber() {
        self.addSubview(labelNumber)
        
        NSLayoutConstraint.activate([
            labelNumber.topAnchor.constraint(equalTo: self.labelStreet.bottomAnchor, constant: 10),
            labelNumber.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelNumber.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setLabelDistrict() {
        self.addSubview(labelDistrict)
        
        NSLayoutConstraint.activate([
            labelDistrict.topAnchor.constraint(equalTo: self.labelNumber.bottomAnchor, constant: 10),
            labelDistrict.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelDistrict.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setLabelCity() {
        self.addSubview(labelCity)
        
        NSLayoutConstraint.activate([
            labelCity.topAnchor.constraint(equalTo: self.labelDistrict.bottomAnchor, constant: 10),
            labelCity.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelCity.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setLabelUF() {
        self.addSubview(labelUF)
        
        NSLayoutConstraint.activate([
            labelUF.topAnchor.constraint(equalTo: self.labelCity.bottomAnchor, constant: 10),
            labelUF.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            labelUF.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    private func setButtonHome() {
        self.addSubview(buttonHome)
        
        buttonHome.addTarget(self, action: #selector(buttonHomeTap), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            buttonHome.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100),
            buttonHome.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24),
            buttonHome.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -24),
            
        ])
    }
    
    @objc
    func buttonHomeTap() {
        onGoHome?()
    }
}

