//
//  AdressViewModel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 05/05/22.
//

import Foundation

    struct AddressViewModel {
        let model: AddressModel
        
        init(withModel model: AddressModel) {
            self.model = model
        }
        
        init(cep: String, street: String, number: String, district: String, city: String, uf: String) {
            self.model = AddressModel(cep: cep, street: street, number: number, district: district, city: city, uf: uf)
        }
        
        var cep: String {
            model.cep
        }
        
        var street: String {
            model.street
        }
        
        var number: String {
            model.number
        }
        
        var district: String {
            model.district
        }
        
        var city: String {
            model.city
        }
        
        var uf: String {
            model.uf
        }
    }
//struct PersonalDataViewModel {
//    let model: PersonalDataModel
//    
//    init(withModel model: PersonalDataModel) {
//        self.model = model
//    }
//    
//    init(age: String, gender:String, cpf: String, phone: String) {
//        self.model = PersonalDataModel(age: age, gender: gender, cpf: cpf, phone: phone)
//    }
//    
//    var age: String {
//        model.age
//    }
//}
//    let cep: String
//    let street: String
//    let number: String
//    let district: String
//    let city: String
//    let state: String
//    let cepViewModel: CEPViewModel
//    
//    init() {
//        cep = String.empty
//        street = String.empty
//        number = String.empty
//        district = String.empty
//        city = String.empty
//        state = String.empty
//        cepViewModel = CEPViewModel()
//    }
//    
//    init(cep: String, street: String, number: String, district: String, city: String, state: String, cepViewModel: CEPViewModel) {
//        self.cep = cep
//        self.street = street
//        self.number = number
//        self.district = district
//        self.city = city
//        self.state = state
//        self.cepViewModel = cepViewModel
//    }
//}
