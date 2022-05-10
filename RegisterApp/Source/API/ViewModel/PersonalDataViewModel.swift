//
//  ProfileViewModel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 03/05/22.
//



import Foundation

struct PersonalDataViewModel {
    let model: PersonalDataModel
    
    init(withModel model: PersonalDataModel) {
        self.model = model
    }
    
    init(age: String, gender:String, cpf: String, phone: String) {
        self.model = PersonalDataModel(age: age, gender: gender, cpf: cpf, phone: phone)
    }
    
    var age: String {
        model.age
    }
    var gender: String {
        model.gender
    }
    
    var cpf: String {
        model.cpf
    }
    
    var phone: String {
        model.phone
    }
}

//import Foundation
//
//struct PersonalDataViewModel {
//    let model: PersonalDataModel
//
//    init(withModel model: PersonalDataModel) {
//        self.model = model
//    }
//
//    init(age: String, gender:String, cpf: String, cep: String, cepViewModel: CEPViewModel) {
//        self.model = PersonalDataModel(age: age, gender: gender, cpf: cpf, cep: cep, cepViewModel: cepViewModel)
//    }
//
//    var age: String {
//        model.age
//    }
//}
