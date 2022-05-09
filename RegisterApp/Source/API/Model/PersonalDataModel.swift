//
//  ProfileModel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 03/05/22.
//

import Foundation

import Foundation

struct PersonalDataModel {
    let age: String
    let gender: String
    let cpf: String
    let phone: String
    
    init() {
        self.age = String.empty
        self.gender = String.empty
        self.cpf = String.empty
        self.phone = String.empty
    }
    
    init(age: String, gender:String, cpf: String, phone: String) {
        self.age = age
        self.gender = gender
        self.cpf = cpf
        self.phone = phone
    }
}

//struct PersonalDataModel {
//    let age: String
//    let gender: String
//    let cpf: String
//    let cep: String
//    let cepViewModel: CEPViewModel
//
//    init() {
//        self.age = String.empty
//        self.gender = String.empty
//        self.cpf = String.empty
//        self.cep = String.empty
//        self.cepViewModel = CEPViewModel()
//    }
//
//    init(age: String, gender:String, cpf: String, cep: String, cepViewModel: CEPViewModel) {
//        self.age = age
//        self.gender = gender
//        self.cpf = cpf
//        self.cep = cep
//        self.cepViewModel = cepViewModel
//    }
//}
