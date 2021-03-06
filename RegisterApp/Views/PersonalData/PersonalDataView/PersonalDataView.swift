//
//  DadosScreen.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 19/04/22.
//

import UIKit

class PersonalDataView: ViewDefault {
    
    // MARK: Closures
    var onNextTap: (() -> Void)?
    var onSaveProfile: ((_ personalDataViewModel: PersonalDataViewModel) -> Void)?
    
    
    // MARK: Elements Views
    lazy var subTitleLabel = SubLabel(subLabel: " Personal data ")
    lazy var idadeLabel = userLabel(idadeLabel: "Idade:")
    lazy var telefoneLabel = TelefoneLabel(telefoneLabel: "Tel:")
    lazy var phoneTextField: TextFieldDefault = {
        let tf = TextFieldDefault(placeholder: " Digite o telefone + DDD")
        tf.keyboardType = .numberPad
        return tf
    }()
    lazy var nextButton: ButtonDefault = {
        let bt = ButtonDefault(title: "Salvar")
        bt.backgroundColor = .buttonBackgroundColor
        bt.addTarget(self, action: #selector(saveProfileTap), for: .touchUpInside)
        return bt
    }()
    
    lazy var ageTextField = TextFieldDefault(placeholder: "  Selecione sua idade")
    lazy var agePickerView:ToolbarPickerView = {
        
        let picker = ToolbarPickerView()
        picker.translatesAutoresizingMaskIntoConstraints = false
        
        picker.didTapDone = { [weak self] in
            guard let self = self else { return }
            
            let row = picker.selectedRow(inComponent: 0)
            picker.selectRow(row, inComponent: 0, animated: false)
            self.ageTextField.text = Age.allCases[row].rawValue
            self.ageTextField.resignFirstResponder()
        }
        
        picker.didTapCancel = {
            self.ageTextField.resignFirstResponder()
        }
        
        return picker
    }()
    lazy var dadosLabel = DadosLabel(dadosLabel: "Gênero:")
    lazy var genderTextField = TextFieldDefault(placeholder: "  Selecione seu Gênero")
    lazy var genderPickerView: ToolbarPickerView = {
        let picker = ToolbarPickerView()
        picker.translatesAutoresizingMaskIntoConstraints = false
        
        picker.didTapDone = { [weak self] in
            guard let self = self else { return }
            
            let row = picker.selectedRow(inComponent: 0)
            picker.selectRow(row, inComponent: 0, animated: false)
            self.genderTextField.text = Gender.allCases[row].rawValue
            self.genderTextField.resignFirstResponder()
        }
        
        picker.didTapCancel = {
            self.genderTextField.resignFirstResponder()
        }
        
        return picker
    }()
    
    lazy var cpfLabel = CPFLabel(cpfLabel: "CPF:")
    lazy var cpfTextField = CPFTextFieldDefault(placeholder: "Digite seu CPF", keyboardType: .numberPad)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        setUIElements()
        setPickerView()
        setTextFields()
    }
    
    private func setPickerView() {
        agePickerView.dataSource = self
        agePickerView.delegate = self
        ageTextField.inputView = agePickerView
        ageTextField.inputAccessoryView = agePickerView.toolbar
        
        
        genderPickerView.dataSource = self
        genderPickerView.delegate = self
        genderTextField.inputView = genderPickerView
        genderTextField.inputAccessoryView = genderPickerView.toolbar
        
    }
    
    private func setTextFields() {
        cpfTextField.delegate = self
        phoneTextField.delegate = self
    }
    
    @objc private func saveProfileTap() {
        let age = ageTextField.text ?? String.empty
        let gender = genderTextField.text ?? String.empty
        let cpf = cpfTextField.text ?? String.empty
        let phone = phoneTextField.text ?? String.empty
        
        let personalDataViewModel = PersonalDataViewModel(age: age,
                                                          gender: gender,
                                                          cpf: cpf,
                                                          phone: phone)
        
        onSaveProfile?(personalDataViewModel)
    }
    
    @objc private func nextButtonTap() {
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    //
    //import SwiftUI
    //import UIViewCanvas
    //
    //struct MyPreview: PreviewProvider {
    //    static var previews: some View {
    //        ViewCanvas(for: PersonalDataView())
    //    }
    //}
    
}
