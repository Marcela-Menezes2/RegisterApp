//
//  UIViewController+.swift
//  RegisterApp
//
//  Created by Marcela Menezes Silva on 29/04/22.
//

import Foundation
import UIKit

extension UIViewController {
    func presentAlert(withTitle title: String, message : String) {
    let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let OKAction = UIAlertAction(title: "OK", style: .default) { action in
        print("Youve pressed OK Button")
    }

    alertController.addAction(OKAction)
    self.present(alertController, animated: true, completion: nil)
  }
}
