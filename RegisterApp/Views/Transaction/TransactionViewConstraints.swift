//
//  HomeViewConstraints.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 09/05/22.
//

import UIKit

extension TransactionView {
    func setUIElements() {
        setSubTitle()
        setIconButton()
        setSegmentControl()
        setIputView()
        setOutputView()
    }
    
    private func setIconButton() {
        self.addSubview(iconButton)
        
        NSLayoutConstraint.activate([
            iconButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 60),
            iconButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            iconButton.heightAnchor.constraint(equalToConstant: 40),
            iconButton.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setSubTitle() {
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 15)
        ])
    }
    
    private func setSegmentControl() {
        self.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
            segmentedControl.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 15),
            segmentedControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            segmentedControl.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            segmentedControl.widthAnchor.constraint(equalToConstant: 150),
            
        ])
    }
    
    private func setIputView() {
        self.addSubview(inputsView)
        
        NSLayoutConstraint.activate([
            inputsView.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 30),
            inputsView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
            inputsView.heightAnchor.constraint(equalToConstant: 124),
            inputsView.widthAnchor.constraint(equalToConstant: 171)
            
        ])
    }
    
    private func setOutputView() {
        self.addSubview(outputsView)
        
        NSLayoutConstraint.activate([
            outputsView.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 30),
            outputsView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
            outputsView.heightAnchor.constraint(equalToConstant: 124),
            outputsView.widthAnchor.constraint(equalToConstant: 171)
            
        ])
    }
}
