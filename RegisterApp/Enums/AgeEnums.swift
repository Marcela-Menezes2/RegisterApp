//
//  AgeEnums.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 26/04/22.
//

import Foundation
enum Age: String, CaseIterable {
    case zero = " De 0 a 15 anos"
    case sixteen = " De 16 a 25 anos"
    case twentySix = " De 26 a 35 anos"
    case ThirtySix = " De 36 a 50 anos"
    case greaterFifty = " Maior que 50 anos"

    static var asArray: [Age] {return self.allCases}
    
    func asInt() -> Int {
            return Age.asArray.firstIndex(of: self)!
    }
}


