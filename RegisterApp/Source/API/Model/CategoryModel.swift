//
//  CategoryModel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 12/05/22.
//

import Foundation

class CategoryModel: Codable {
    let name: String
    let about: String
    
    init() {
        name = String.empty
        about = String.empty
    }
    
    init(name: String, about: String) {
        self.name = name
        self.about = about
    }
}
