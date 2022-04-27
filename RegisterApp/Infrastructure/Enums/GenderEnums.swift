//
//  GenderEnums.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 27/04/22.
//

import Foundation

enum Gender: String, CaseIterable {
    case male = " 🧔🏻‍♂️ 👨🏽 - Masculino"
    case female = " 👱🏼‍♀️ 👱🏾‍♀️ - Feminino"
    case undefined = "Prefiro não informar"

    static var asArray: [Gender] {return self.allCases}
    
    func asInt() -> Int {
            return Gender.asArray.firstIndex(of: self)!
    }
}
