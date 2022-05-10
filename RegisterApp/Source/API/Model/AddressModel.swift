//
//  AddressModel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 10/05/22.
//

import Foundation

struct AddressModel {
    let cep: String
    let street: String
    let number: String
    let district: String
    let city: String
    let uf: String

    init() {
        cep = String.empty
        street = String.empty
        number = String.empty
        district = String.empty
        city = String.empty
        uf = String.empty
    }

    init(cep: String, street: String, number: String, district: String, city: String, uf: String) {
        self.cep = cep
        self.street = street
        self.number = number
        self.district = district
        self.city = city
        self.uf = uf
    }
}
