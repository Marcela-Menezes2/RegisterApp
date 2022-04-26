//
//  Formatter+.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 26/04/22.
//

import Foundation
import UIKit

extension Formatter {
    static let withSeparator: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = "."
        
        return formatter
    }()
}
