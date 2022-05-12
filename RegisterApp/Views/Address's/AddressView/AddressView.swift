//
//  AddressView.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 23/04/22.
//

import UIKit

class AddressView: ViewDefault {
    
    // MARK: Closures
    var onNextTap: (()  -> Void)?
    var onSaveTap : ((_ addressViewModel: AddressViewModel) -> Void)?
    
    lazy var subTitleLabel = SubLabel(subLabel: " Address Data ")
    lazy var ruaLabel = userLabel(idadeLabel: "Rua:")
    lazy var ruaTextField = TextFieldDefault(placeholder: "  Insira sua resposta ")
    lazy var numeroLabel = NumeroLabel(numeroLabel: " N°:")
    lazy var numeroTextField = TextFieldDefault(placeholder: "  Digite aqui - S/N ")
    lazy var bairroLabel = BairroLabel(bairroLabel: "Bairro:")
    lazy var bairroTextField = TextFieldDefault(placeholder: " Insira a sua resposta")
    lazy var cepLabel = CepLabel(cepLabel: "CEP")
    lazy var cepTextField = CPFTextFieldDefault(placeholder: "informe seu CEP", keyboardType: .numberPad)
    lazy var buscaCEPButton: ButtonDefault = {
        let bt = ButtonDefault(title: "🔍")
        bt.addTarget(self, action: #selector(buscaCEPButtonTAP), for: .touchUpInside)
        
        return bt
    }()
    
    lazy var cidadeLabel = CidadeLabel(cidadeLabel: " Cidade:")
    lazy var cidadeTextField = TextFieldDefault(placeholder: "  Insira sua resposta ")
    lazy var estadoLabel = EstadoLabel(estadoLabel: " Estado:")
    lazy var estadoTextField = TextFieldDefault(placeholder: " Insira a sua resposta")
    lazy var ufLabel = NumeroLabel(numeroLabel: "  UF: ")
    lazy var ufTextField = TextFieldDefault(placeholder: "  Insira a sua resposta ")
    lazy var logradouroLabel = SubLabel(subLabel: " Logradouro: ")
    lazy var logradouroTextField = TextFieldDefault(placeholder: "  Insira a sua resposta ")
    lazy var complementoLabel = SubLabel(subLabel: " Complemento: ")
    lazy var complementoTextField = TextFieldDefault(placeholder: "  Insira a sua resposta ")
    lazy var paisLabel = EstadoLabel(estadoLabel: " País:")
    lazy var paisButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .textFieldBackgroundColor
        button.layer.cornerRadius = 10
        button.setTitleColor(.gray, for: UIControl.State.normal)
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
        let bt = ButtonDefault(title: "Próximo")
        bt.backgroundColor = .buttonBackgroundColor
        bt.addTarget(self, action: #selector(saveProfileTap), for: .touchUpInside)
        return bt
    }()
    
    @objc
    private func buscaCEPButtonTAP() {
        guard let cep = cepTextField.text else { return }
        
        let provider = CEPProvider()
        provider.getEndereco(withCEP: cep) { (model, error) in
            guard let model = model
            else {
                print("Deu erro na busca do cep: \(String(describing: error))")
                return
            }
            
            let viewModel = CEPViewModel(model: model)
            self.updateCamp(cepModel: viewModel)
            print(viewModel)
        }
    }
    
    @objc private func saveProfileTap() {
        
        let addressViewModel = AddressViewModel(cep: cepTextField.text ?? String.empty,
                                                street: ruaTextField.text ?? String.empty,
                                                number: numeroTextField.text ?? String.empty,
                                                district: bairroTextField.text ?? String.empty,
                                                city: cidadeTextField.text ?? String.empty,
                                                uf: ufTextField.text ?? String.empty)
        
        onSaveTap?(addressViewModel)
    }
    @objc private func nextButtonTap() {
        onNextTap?()
        print("Hey")
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setUIElements()
        
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
//        ViewCanvas(for: AddressView())
//    }
//}
//
