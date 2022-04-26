//
//  AddressView.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 23/04/22.
//

import UIKit

class AddressView: UIView {
    
    // MARK: Closures
    var onNextTap: (() -> Void)?
    
    lazy var titleLabel = LabelDefault(titleLabel: "Register ")
    lazy var subTitleLabel = SubLabel(subLabel: " Address Data ")
    lazy var idadeLabel = IdadeLabel(idadeLabel: "Rua:")
    lazy var ruaTextField = TextFieldDefault(placeholder: "  Insira sua resposta ")
    lazy var numeroLabel = NumeroLabel(numeroLabel: " Número:")
    lazy var numeroTextField = TextFieldDefault(placeholder: "  Insira a sua resposta ")
    lazy var bairroLabel = BairroLabel(bairroLabel: "Bairro:")
    lazy var bairroTextField = TextFieldDefault(placeholder: " Insira a sua resposta")
    lazy var cepLabel = CepLabel(cepLabel: " Cep:")
    lazy var cepTextField = TextFieldDefault(placeholder: "  Insira sua resposta ")
    lazy var cidadeLabel = CidadeLabel(cidadeLabel: " Cidade:")
    lazy var cidadeTextField = TextFieldDefault(placeholder: "  Insira sua resposta ")
    lazy var estadoLabel = EstadoLabel(estadoLabel: "Estado:")
    lazy var stateButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 10
        button.setTitleColor(.black, for: UIControl.State.normal)
        let optionClosure = {(action: UIAction) in
            print(action.title)
        }
        let option = States.listStates
        let buttons = option.map {
            UIAction(title: $0,  handler: optionClosure)
        }
        
        button.menu = UIMenu(children: buttons)
        button.showsMenuAsPrimaryAction = true
        button.changesSelectionAsPrimaryAction = true
        return button
    }()
    
    lazy var nextButton: ButtonDefault = {
        let bt = ButtonDefault(setTitle: "Próximo")
        bt.backgroundColor = UIColor(red: 41/255, green: 176/255, blue: 109/255, alpha: 0.85)
        bt.addTarget(self, action: #selector(nextButtonTap), for: .touchUpInside)
        return bt
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUIElements()
        
    }
    
    @objc private func nextButtonTap() {
        onNextTap?()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

import SwiftUI
import UIViewCanvas

struct MyPreview: PreviewProvider {
    static var previews: some View {
        ViewCanvas(for: AddressView())
    }
}

