//
//  NextButtom.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//

import UIKit

class NextButton: UIButton {
    init(setTitle: String){
        super.init(frame: .zero)
        initDefault(setTitle: setTitle)
    }
   
    private func initDefault(setTitle: String) {
        self.setTitle(setTitle, for: .normal)
       self.translatesAutoresizingMaskIntoConstraints = false
        self.setTitle(" Next ", for: .normal)
        self.setTitleColor(.white, for: UIControl.State.normal)
        self.clipsToBounds = true
        self.layer.cornerRadius = 7.5
        self.backgroundColor = .systemGreen
   }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
