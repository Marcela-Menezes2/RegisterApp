//
//  UserModel.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 28/04/22.
//

import Foundation
// MARK: - UserModel
struct UserModel: Codable {
    let id: Int
    let email, password: String
}
