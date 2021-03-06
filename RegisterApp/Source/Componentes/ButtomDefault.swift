//
//  NextButtom.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//

import UIKit

class ButtonDefault: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        
        // Criei 2 extensoes para pegar cor
        // UIColor.hexColor(hex: "#29B06D")
        // "#29B06D".color
        
        initDefault(title: title, backgroundColor: .buttonBackgroundColor)
    }
    
    init(title: String, target: Any?, action: Selector, for controlEvents: UIControl.Event) {
        super.init(frame: .zero)
        
        initDefault(title: title, backgroundColor: .buttonBackgroundColor)
        self.addTarget(target, action: action, for: controlEvents)
    }
    
    init(title: String, backgroundColor: UIColor) {
        super.init(frame: .zero)
        
        initDefault(title: title, backgroundColor: backgroundColor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String, backgroundColor: UIColor) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = 10
    }
}


//class ButtonDefault: UIButton {
//    init(setTitle: String) {
//        super.init(frame: .zero)
//
//        initDefault(setTitle: setTitle, backgroundColor: .gray)
//    }
//
//    init(setTitle: String, backgroundColor: UIColor) {
//        super.init(frame: .zero)
//
//        initDefault(setTitle: setTitle, backgroundColor: backgroundColor)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
//    private func initDefault(setTitle: String, backgroundColor: UIColor) {
//        self.setTitle(setTitle, for: .normal)
//       self.translatesAutoresizingMaskIntoConstraints = false
//       // self.setTitle(" Próximo ", for: .normal)
//        self.setTitleColor(.black, for: UIControl.State.normal)
//        self.clipsToBounds = true
//        self.layer.cornerRadius = 10
//       self.backgroundColor = backgroundColor
//  //      self.addTarget(self, action: #selector(self.tappedNextButton), for: .touchUpInside)
//   }
//    
//    @objc private func tappedNextButton(){
//        self.delegate?.actionNextButton()
//        print("Deu certo")
//    }

    
  
    
