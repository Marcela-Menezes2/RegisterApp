//
//  ReviewDataConstraints.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 25/04/22.
//

import UIKit

extension ReviewDataView {
    func setUIElements() {
        setTitle()
        setSubTitle()
        setNextButton()
    }
        private func setTitle() {
            self.addSubview(titleLabel)
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 80),
                titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20)
            ])
        }
        
        private func setSubTitle() {
            self.addSubview(subTitleLabel)
            NSLayoutConstraint.activate([
                subTitleLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 14),
                subTitleLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor)
            ])
        }
    private func setNextButton() {
        self.addSubview(nextButton)
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            nextButton.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),
            nextButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -35),
            nextButton.heightAnchor.constraint(equalToConstant: 46)
        ])
    }
        
}
