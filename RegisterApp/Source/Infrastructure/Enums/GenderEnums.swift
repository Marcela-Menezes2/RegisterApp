//
//  GenderEnums.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 27/04/22.
//

import Foundation

enum Gender: String, CaseIterable {
    case male = " ð§ð»ââï¸ ð¨ð½ - Masculino"
    case female = " ð±ð¼ââï¸ ð±ð¾ââï¸ - Feminino"
    case undefined = "Prefiro nÃ£o informar"

    static var asArray: [Gender] {return self.allCases}
    
    func asInt() -> Int {
            return Gender.asArray.firstIndex(of: self)!
    }
}
