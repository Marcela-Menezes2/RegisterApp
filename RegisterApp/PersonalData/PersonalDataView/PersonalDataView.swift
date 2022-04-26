//
//  DadosScreen.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//

import UIKit

class PersonalDataView: UIView {
    
    // MARK: Closures
    var onNextTap: (() -> Void)?
    
    lazy var titleLabel = LabelDefault(titleLabel: "Register ")
    lazy var subTitleLabel = SubLabel(subLabel: " Personal data ")
    lazy var idadeLabel = IdadeLabel(idadeLabel: "Idade:")
    lazy var dadosLabel = DadosLabel(dadosLabel: "Gênero:")
    lazy var cpfLabel = CPFLabel(cpfLabel: " CPF: ")
    lazy var cpfTextField = TextFieldDefault(placeholder: "  Digite o seu CPF ", isSecureTextEntry: true)
    lazy var telefoneLabel = TelefoneLabel(telefoneLabel: "Tel:")
    lazy var telefoneTextField = TextFieldDefault(placeholder: " Digite seu número de telefone + DDD")
    lazy var nextButton: ButtonDefault = {
        let bt = ButtonDefault(setTitle: "Próximo")
        bt.backgroundColor = UIColor(red: 41/255, green: 176/255, blue: 109/255, alpha: 0.85)
        bt.addTarget(self, action: #selector(nextButtonTap), for: .touchUpInside)
        return bt
    }()
    lazy var idadeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 10
        button.setTitleColor(.black, for: UIControl.State.normal)
        let optionClosure = {(action: UIAction) in
            print(action.title)
        }
        
        button.menu = UIMenu(children: [
            UIAction(title: "Selecione a sua idade", state: .on, handler: optionClosure),
            UIAction(title: "De 0 a 15 anos", handler: optionClosure),
            UIAction(title: "De 16 a 25 anos", handler: optionClosure),
            UIAction(title: "De 26 a 35 anos", handler: optionClosure),
            UIAction(title: "De 36 a 50 anos", handler: optionClosure),
            UIAction(title: "Maior que 50 anos", handler: optionClosure),
        ])
        button.showsMenuAsPrimaryAction = true
        button.changesSelectionAsPrimaryAction = true
        return button
    }()
    
    lazy var generoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 10
        button.setTitleColor(.black, for: UIControl.State.normal)
        let optionClosure = {(action: UIAction) in
            print(action.title)
        }
        
        button.menu = UIMenu(children: [
            UIAction(title: "Selecione o seu gênero", state: .on, handler: optionClosure),
            UIAction(title: "Masculino", handler: optionClosure),
            UIAction(title: "Feminino", handler: optionClosure),
            UIAction(title: "Prefiro não informar", handler: optionClosure),
        ])
        button.showsMenuAsPrimaryAction = true
        button.changesSelectionAsPrimaryAction = true
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setUIElements()
    }
    @objc private func nextButtonTap() {
        onNextTap?()
        print("Hey")
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
}

//import SwiftUI
//import UIViewCanvas
//
//struct MyPreview: PreviewProvider {
//    static var previews: some View {
//        ViewCanvas(for: PersonalDataView())
//    }
//}


