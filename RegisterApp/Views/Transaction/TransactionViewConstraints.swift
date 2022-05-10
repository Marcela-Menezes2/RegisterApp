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
        setBlueView()
        setPinkView()
        setCircleImage()
        setSubLabel()
        setUserLabel()
        setSetaImage()
        setTextTitle()
        setDescriptLabel()
}
    
    private func setIconButton() {
        self.addSubview(iconButton)
        
        NSLayoutConstraint.activate([
            iconButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            iconButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            iconButton.heightAnchor.constraint(equalToConstant: 40),
            iconButton.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setSubTitle() {
        self.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
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
    
    private func setBlueView() {
        self.addSubview(blueView)
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 20),
            blueView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            blueView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -220),
            blueView.heightAnchor.constraint(equalToConstant: 140),
            blueView.widthAnchor.constraint(equalToConstant: 171)
            
        ])
    }
    
    private func setCircleImage() {
        self.addSubview(circleImage)
        
        NSLayoutConstraint.activate([
            circleImage.topAnchor.constraint(equalTo: self.blueView.topAnchor, constant: 15),
            circleImage.leftAnchor.constraint(equalTo: self.blueView.leftAnchor, constant: 16),
       //     circleImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -220),
            circleImage.heightAnchor.constraint(equalToConstant: 35),
            circleImage.widthAnchor.constraint(equalToConstant: 35)
            
        ])
    }
    
    private func setSubLabel() {
        self.addSubview(subTitle)
        
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: self.circleImage.bottomAnchor, constant: 10),
            subTitle.leftAnchor.constraint(equalTo: self.circleImage.leftAnchor)
        ])
    }
    
    private func setUserLabel() {
        self.addSubview(descriptionLabel)
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: self.subTitle.topAnchor, constant: 30),
            descriptionLabel.leftAnchor.constraint(equalTo: self.circleImage.leftAnchor)
        ])
    }
    
    private func setPinkView() {
        self.addSubview(pinkView)

        NSLayoutConstraint.activate([
            pinkView.topAnchor.constraint(equalTo: self.segmentedControl.bottomAnchor, constant: 20),
           // pinkView.leftAnchor.constraint(equalTo: self.blueView.leftAnchor, constant: 16),
            pinkView.leadingAnchor.constraint(equalTo: self.blueView.trailingAnchor, constant: 26),
            pinkView.heightAnchor.constraint(equalToConstant: 140),
            pinkView.widthAnchor.constraint(equalToConstant: 171)

        ])
    }
    
    private func setSetaImage() {
        self.addSubview(setaImage)
        
        NSLayoutConstraint.activate([
            setaImage.topAnchor.constraint(equalTo: self.pinkView.topAnchor, constant: 15),
            setaImage.leftAnchor.constraint(equalTo: self.pinkView.leftAnchor, constant: 16),
       //     circleImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -220),
            setaImage.heightAnchor.constraint(equalToConstant: 35),
            setaImage.widthAnchor.constraint(equalToConstant: 35)
            
        ])
    }
    
    
    private func setTextTitle() {
        self.addSubview(textTitle)
        
        NSLayoutConstraint.activate([
            textTitle.topAnchor.constraint(equalTo: self.setaImage.bottomAnchor, constant: 10),
            textTitle.leftAnchor.constraint(equalTo: self.setaImage.leftAnchor)
        ])
    }
    
    private func setDescriptLabel() {
        self.addSubview(descriptLabel)
        
        NSLayoutConstraint.activate([
            descriptLabel.topAnchor.constraint(equalTo: self.subTitle.topAnchor, constant: 30),
            descriptLabel.leftAnchor.constraint(equalTo: self.setaImage.leftAnchor)
        ])
    }
    
}
