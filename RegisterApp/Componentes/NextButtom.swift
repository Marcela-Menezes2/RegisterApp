//
//  NextButtom.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//

import UIKit

protocol RegisterScreenProtocol: AnyObject {
    func actionNextButton()
}

class NextButton: UIButton {
    
    private weak var delegate: RegisterScreenProtocol?
     
     func delegate(delegate: RegisterScreenProtocol?) {
         self.delegate = delegate
     }

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
        self.backgroundColor = .gray
        self.addTarget(self, action: #selector(self.tappedNextButton), for: .touchUpInside)
   }
    
    @objc private func tappedNextButton(){
        self.delegate?.actionNextButton()
        print("Deu certo")
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
