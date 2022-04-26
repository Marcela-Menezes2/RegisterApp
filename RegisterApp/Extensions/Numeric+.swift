//
//  Numeric+.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 26/04/22.
//

import Foundation
import UIKit

extension Numeric {
    var formattedWithSeparator: String {
        Formatter.withSeparator.string(for: self) ?? String.empty
    }
}
