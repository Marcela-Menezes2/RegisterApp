//
//  AddressConstraints.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

extension AddressView {
    func setUIElements() {
        setSubTitle()
        setCepLabel()
        setBuscaCEPButton()
        setCepTextField()
        setLogradouroLabel()
        setLogradouroTextField()
        setRuaLabel()
        setRuaTextField()
        setNumeroLabel()
        setNumeroTextField()
        setUFLabel()
        setUFTextField()
        setBairroLabel()
        setBairroTextField()
        setCidadeLabel()
        setCidadeTextField()
        setEstadoLabel()
        setEstadoTextField()
        setPaisLabel()
        setPaisButton()
        setNextButton()
    }
    
    private func setSubTitle() {
        self.addSubview(subTitleLabel)
        
        NSLayoutConstraint.activate([
            subTitleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 140),
            subTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15)
        ])
    }
    
    private func setCepLabel() {
        self.addSubview(cepLabel)
        
        NSLayoutConstraint.activate([
            cepLabel.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 40),
            cepLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10)
        ])
    }
    
    private func setBuscaCEPButton() {
        self.addSubview(buscaCEPButton)

        NSLayoutConstraint.activate([
            buscaCEPButton.topAnchor.constraint(equalTo: self.subTitleLabel.bottomAnchor, constant: 35),
            buscaCEPButton.heightAnchor.constraint(equalToConstant: 25),
            buscaCEPButton.widthAnchor.constraint(equalToConstant: 25),
            buscaCEPButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12),

        ])
    }

    private func setCepTextField() {
        self.addSubview(cepTextField)
        
        NSLayoutConstraint.activate([
            cepTextField.topAnchor.constraint(equalTo: self.cepLabel.topAnchor, constant:  -10),
            cepTextField.leftAnchor.constraint(equalTo: self.cepLabel.leftAnchor, constant: 50),
            cepTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            cepTextField.heightAnchor.constraint(equalToConstant: 33),
        ])
    }
    
    private func setLogradouroLabel() {
        self.addSubview(logradouroLabel)

        NSLayoutConstraint.activate([
            logradouroLabel.topAnchor.constraint(equalTo: self.cepLabel.bottomAnchor, constant: 40),
            logradouroLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 8),
        ])
    }

    private func setLogradouroTextField() {
        self.addSubview(logradouroTextField)

        NSLayoutConstraint.activate([
            logradouroTextField.topAnchor.constraint(equalTo: self.cepTextField.bottomAnchor, constant: 30),
            logradouroTextField.leftAnchor.constraint(equalTo: self.logradouroLabel.leftAnchor, constant: 110),
            logradouroTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -20),
            logradouroTextField.heightAnchor.constraint(equalToConstant: 35),

        ])
    }

    private func setRuaLabel() {
        self.addSubview(ruaLabel)

        NSLayoutConstraint.activate([
            ruaLabel.topAnchor.constraint(equalTo: self.logradouroLabel.bottomAnchor, constant: 40),
            ruaLabel.leftAnchor.constraint(equalTo: self.logradouroLabel.leftAnchor),


        ])
    }


    private func setRuaTextField() {
        self.addSubview(ruaTextField)

        NSLayoutConstraint.activate([
            ruaTextField.topAnchor.constraint(equalTo: self.logradouroTextField.bottomAnchor, constant: 30),
            ruaTextField.leftAnchor.constraint(equalTo: self.ruaLabel.leftAnchor, constant: 50),
            ruaTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            ruaTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }

    private func setNumeroLabel() {
        self.addSubview(numeroLabel)

        NSLayoutConstraint.activate([
            numeroLabel.topAnchor.constraint(equalTo: self.ruaLabel.bottomAnchor, constant: 50),
            numeroLabel.leftAnchor.constraint(equalTo: self.ruaLabel.leftAnchor),
        ])
    }

    private func setNumeroTextField() {
        self.addSubview(numeroTextField)

        NSLayoutConstraint.activate([
            numeroTextField.topAnchor.constraint(equalTo: self.ruaTextField.bottomAnchor, constant:  35),
            numeroTextField.leftAnchor.constraint(equalTo: self.numeroLabel.leftAnchor, constant: 35),
        //    numeroTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -90),
            numeroTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }

    private func setUFLabel() {
        self.addSubview(ufLabel)

        NSLayoutConstraint.activate([
            ufLabel.topAnchor.constraint(equalTo: self.numeroLabel.topAnchor),
            ufLabel.leadingAnchor.constraint(equalTo: self.numeroTextField.trailingAnchor, constant: 8),
        ])
    }

    private func setUFTextField() {
        self.addSubview(ufTextField)

        NSLayoutConstraint.activate([
            ufTextField.topAnchor.constraint(equalTo: self.ruaTextField.bottomAnchor, constant:  35),
            ufTextField.leftAnchor.constraint(equalTo: self.ufLabel.leftAnchor, constant: 35),
            ufTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            ufTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }

    private func setBairroLabel() {
        self.addSubview(bairroLabel)

        NSLayoutConstraint.activate([
            bairroLabel.topAnchor.constraint(equalTo: self.numeroLabel.bottomAnchor, constant: 40),
            bairroLabel.leftAnchor.constraint(equalTo: self.numeroLabel.leftAnchor),
        ])
    }

    private func setBairroTextField() {
        self.addSubview(bairroTextField)

        NSLayoutConstraint.activate([
            bairroTextField.topAnchor.constraint(equalTo: self.bairroLabel.topAnchor, constant:  -10),
            bairroTextField.leftAnchor.constraint(equalTo: self.bairroLabel.leftAnchor, constant: 60),
            bairroTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            bairroTextField.heightAnchor.constraint(equalToConstant: 35),

        ])
    }
   


    private func setCidadeLabel() {
        self.addSubview(cidadeLabel)

        NSLayoutConstraint.activate([
            cidadeLabel.topAnchor.constraint(equalTo: self.bairroLabel.bottomAnchor, constant: 40),
            cidadeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
        ])
    }

    private func setCidadeTextField() {
        self.addSubview(cidadeTextField)

        NSLayoutConstraint.activate([
            cidadeTextField.topAnchor.constraint(equalTo: self.cidadeLabel.topAnchor, constant:  -10),
            cidadeTextField.leftAnchor.constraint(equalTo: self.cidadeLabel.leftAnchor, constant: 70),
            cidadeTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60),
            cidadeTextField.heightAnchor.constraint(equalToConstant: 35),
        ])
    }


    private func setEstadoLabel() {
        self.addSubview(estadoLabel)

        NSLayoutConstraint.activate([
            estadoLabel.topAnchor.constraint(equalTo: self.cidadeLabel.bottomAnchor, constant: 40),
            estadoLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
        ])
    }

    private func setEstadoTextField() {
        self.addSubview(estadoTextField)

        NSLayoutConstraint.activate([
            estadoTextField.topAnchor.constraint(equalTo: self.estadoLabel.topAnchor, constant: -10),
            estadoTextField.leftAnchor.constraint(equalTo: self.estadoLabel.leftAnchor, constant: 70),
            estadoTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -60),
            estadoTextField.heightAnchor.constraint(equalToConstant: 35),

        ])
    }
    
    private func setPaisLabel() {
        self.addSubview(paisLabel)

        NSLayoutConstraint.activate([
           paisLabel.topAnchor.constraint(equalTo: self.estadoLabel.bottomAnchor, constant: 40),
           paisLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 10),
        ])
    }

    private func setPaisButton() {
        self.addSubview(paisButton)

        NSLayoutConstraint.activate([
            paisButton.topAnchor.constraint(equalTo: self.paisLabel.topAnchor, constant: -10),
            paisButton.leftAnchor.constraint(equalTo: self.paisLabel.leftAnchor, constant: 70),
            paisButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -60),
            paisButton.heightAnchor.constraint(equalToConstant: 35),

        ])
    }


    private func setNextButton() {
        self.addSubview(nextButton)
        
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            nextButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
            nextButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35),
            nextButton.heightAnchor.constraint(equalToConstant: 36),
        ])
    }
}
