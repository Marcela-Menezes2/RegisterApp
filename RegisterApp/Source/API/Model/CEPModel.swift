//
//  CEPModel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 28/04/22.
//

import Foundation

struct CEPModel: Codable {
    let uf: String
    let cidade: String
    let bairro: String
    let tipoLogradouro: String
    let logradouro: String
    let resultado: String
    let resultadoTxt: String

    enum CodingKeys: String, CodingKey {
        case uf, cidade, bairro
        case tipoLogradouro = "tipo_logradouro"
        case logradouro, resultado
        case resultadoTxt = "resultado_txt"
    }
    
    init() {
        self.uf = String.empty
        self.cidade = String.empty
        self.bairro = String.empty
        self.tipoLogradouro = String.empty
        self.logradouro = String.empty
        self.resultado = String.empty
        self.resultadoTxt = String.empty
    }
}
