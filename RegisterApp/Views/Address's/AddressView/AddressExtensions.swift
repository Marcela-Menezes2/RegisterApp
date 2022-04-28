//
//  AddressExtensions.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 28/04/22.
//

import UIKit

extension AddressView: UITextFieldDelegate {
    
    func updateCamp(cepModel: CEPViewModel) {
        DispatchQueue.main.async {
            self.estadoTextField.text = cepModel.estado
            self.bairroTextField.text = cepModel.bairro
            self.cidadeTextField.text = cepModel.cidade
            self.logradouroTextField.text = cepModel.logradouro
            self.ufTextField.text = cepModel.estado
        }
    }
}
