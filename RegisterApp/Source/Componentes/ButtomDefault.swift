//
//  NextButtom.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//

import UIKit

class ButtonDefault: UIButton {
    init(setTitle: String) {
        super.init(frame: .zero)
        
        initDefault(setTitle: setTitle, backgroundColor: .gray)
    }
   
    init(setTitle: String, backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        initDefault(setTitle: setTitle, backgroundColor: backgroundColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    private func initDefault(setTitle: String, backgroundColor: UIColor) {
        self.setTitle(setTitle, for: .normal)
       self.translatesAutoresizingMaskIntoConstraints = false
       // self.setTitle(" Próximo ", for: .normal)
        self.setTitleColor(.black, for: UIControl.State.normal)
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
       self.backgroundColor = backgroundColor
  //      self.addTarget(self, action: #selector(self.tappedNextButton), for: .touchUpInside)
   }
    
//    @objc private func tappedNextButton(){
//        self.delegate?.actionNextButton()
//        print("Deu certo")
//    }

    
  
    
}
