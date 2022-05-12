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
        setConstraintTableView()
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
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            titleLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: kLeft),
            titleLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -kLeft),
        ])
    }
    
    private func setSegmentControl() {
        self.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
//            segmentedControl.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 15),
//            segmentedControl.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
//            segmentedControl.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
//            segmentedControl.widthAnchor.constraint(equalToConstant: 150),
            segmentedControl.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 18),
            segmentedControl.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: space),
            segmentedControl.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -space),
        ])
    }
    
    private func setIputView() {
        self.addSubview(inputsView)
        
        print(UIScreen.main.bounds.width)
        print(space)
        print(width)
        
        NSLayoutConstraint.activate([
//            inputsView.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 30),
//            inputsView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20),
//            inputsView.heightAnchor.constraint(equalToConstant: 124),
//            inputsView.widthAnchor.constraint(equalToConstant: 171)
            inputsView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 30),
            inputsView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: space),
            inputsView.heightAnchor.constraint(equalToConstant: 130),
            inputsView.widthAnchor.constraint(equalToConstant: width),
        ])
    }
    
    private func setOutputView() {
        self.addSubview(outputsView)
        
        NSLayoutConstraint.activate([
//            outputsView.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 30),
//            outputsView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20),
//            outputsView.heightAnchor.constraint(equalToConstant: 124),
//            outputsView.widthAnchor.constraint(equalToConstant: 171)
            outputsView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 30),
            outputsView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -space),
            outputsView.heightAnchor.constraint(equalToConstant: 130),
            outputsView.widthAnchor.constraint(equalToConstant: width),
            
        ])
    }
}
